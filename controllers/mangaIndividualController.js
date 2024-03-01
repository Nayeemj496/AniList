const connect = require("./connect");
const oracledb = require("oracledb");

const mangaIndividualControllerGET = async (req, res) => {
    console.log("in the mangaIndividualControllerGET");
    console.log(req.url, req.method);
    console.log(req.params);

    const obj = req.params;

    req.session.manga = {
        id: req.params.id,
        name: req.params.name,
    };

    const connection = await connect();

    // mangas
    const mangas = (
        await connection.execute(
            `
        SELECT * FROM MANGA
        WHERE MANGA_ID = :id
    `,
            {
                id: obj.id,
            },
            {
                outFormat: oracledb.OUT_FORMAT_OBJECT,
            }
        )
    ).rows;

    req.session.manga.banner = mangas[0].BANNER_IMAGE;

    // genres
    const genres = (
        await connection.execute(
            `
        SELECT GENRE_NAME
        FROM MANGA M JOIN MANGA_GENRE MG ON M.MANGA_ID = MG.MANGA_ID JOIN GENRE G ON MG.GENRE_ID = G.GENRE_ID
        WHERE M.MANGA_ID = :id
    `,
            {
                id: obj.id,
            },
            {
                outFormat: oracledb.OUT_FORMAT_OBJECT,
            }
        )
    ).rows;

    // relations
    const relations = (
        await connection.execute(
            `
        SELECT *
        FROM ANIME A
        WHERE A.MANGA_ID = :id
        ORDER BY A.ENGLISH
    `,
            {
                id: obj.id,
            },
            {
                outFormat: oracledb.OUT_FORMAT_OBJECT,
            }
        )
    ).rows;

    // characters
    const characters = (
        await connection.execute(
            `
        SELECT *
        FROM CHARACTER C
        WHERE C.MANGA_ID = :id
    `,
            {
                id: obj.id,
            },
            {
                outFormat: oracledb.OUT_FORMAT_OBJECT,
            }
        )
    ).rows;

    //staffs
    const staffs = (await connection.execute(`
        SELECT S.*
        FROM MANGA_STAFF MST JOIN STAFF S ON MST.STAFF_ID = S.STAFF_ID
        WHERE MST.MANGA_ID = :id
    `, {
        id: obj.id
    }, {
        outFormat: oracledb.OUT_FORMAT_OBJECT
    })).rows
    

    let isLiked = null;
    let preference = null;

    if (req.session.user) {
        const userdata = (
            await connection.execute(
                `
            SELECT * FROM USER_MANGA UM
            WHERE UM.USER_ID = :userid AND UM.MANGA_ID = :mangaid
        `,
                { userid: req.session.user.USER_ID, mangaid: obj.id },
                { outFormat: oracledb.OUT_FORMAT_OBJECT }
            )
        ).rows;

        if (userdata.length == 0) isLiked = false;
        else {
            console.log("usedata: ", userdata[0]);
            if (userdata[0].IS_LIKED === "TRUE") isLiked = true;
            else isLiked = false;
            // newly added property
            preference = userdata[0];
        }
    }

    let watching = (
        await connection.execute(
            `
        SELECT COUNT(*) AS "READING"
        FROM USER_MANGA UM
        WHERE MANGA_ID = :mangaid AND STATUS = 'READING'
    `,
            [obj.id]
        )
    ).rows[0][0];

    let planning = (
        await connection.execute(
            `
        SELECT COUNT(*) AS "PLANNING"
        FROM USER_MANGA UM
        WHERE MANGA_ID = :mangaid AND STATUS = 'PLAN TO READ'
    `,
            [obj.id]
        )
    ).rows[0][0];

    let completed = (
        await connection.execute(
            `
        SELECT COUNT(*) AS "COMPLETED"
        FROM USER_MANGA UM
        WHERE MANGA_ID = :mangaid AND STATUS = 'COMPLETED'
    `,
            [obj.id]
        )
    ).rows[0][0];

    let paused = (
        await connection.execute(
            `
        SELECT COUNT(*) AS "PAUSED"
        FROM USER_MANGA UM
        WHERE MANGA_ID = :mangaid AND STATUS = 'PAUSED'
    `,
            [obj.id]
        )
    ).rows[0][0];

    let dropped = (
        await connection.execute(
            `
        SELECT COUNT(*) AS "DROPPED"
        FROM USER_MANGA UA
        WHERE MANGA_ID = :mangaid AND STATUS = 'DROPPED'
    `,
            [obj.id]
        )
    ).rows[0][0];

    let avgScore = (
        await connection.execute(
            `
        SELECT AVG(SCORE)
        FROM USER_MANGA UA 
        WHERE MANGA_ID = :mangaid
    `,
            [obj.id]
        )
    ).rows[0][0];

    let userid = null
    if (req.session.user) userid = req.session.user.USER_ID

    let status = (await connection.execute(`
        SELECT UM.STATUS
        FROM MANGA M JOIN USER_MANGA UM ON M.MANGA_ID = UM.MANGA_ID
        WHERE UM.USER_ID = :userid AND M.MANGA_ID = :mangaid
    `, [userid, obj.id])).rows

    console.log(status)

    await connection.close();

    if (req.session.user) {
        res.render("manga_individual", {
            manga: mangas[0],
            genres,
            relations,
            characters,
            staffs,
            isLiked,
            preference,
            watching,
            planning,
            completed,
            paused,
            dropped,
            avgScore,
            status: status.length === 0 || status[0][0] == null ? 'Add to List' : status[0][0],
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        });
    } else {
        res.redirect("/login")
    }
};


const mangaIndividualControllerPOST = async (req, res) => {
    console.log("in the mangaIndividualControllerPOST");
    console.log(req.url, req.method);

    console.log(req.body); // testing purpose

    let mangaid = Number(req.url.split("/")[2]);

    console.log("mangaid: ", mangaid);

    const connection = await connect();

    if (req.session.user) {
        let user = req.session.user;

        const userdata = (
            await connection.execute(
                `
            SELECT *
            FROM USER_MANGA UM
            WHERE UM.USER_ID = :userid AND UM.MANGA_ID = :mangaid
        `,
                { userid: user.USER_ID, mangaid },
                {
                    outFormat: oracledb.OUT_FORMAT_OBJECT,
                }
            )
        ).rows;

        console.log(userdata); //testing purpose

        if (req.body.hasOwnProperty("like")) {
            if (userdata.length === 0) {
                await connection.execute(
                    `
                    INSERT INTO USER_MANGA(USER_ID, MANGA_ID, IS_LIKED)
                    VALUES (:userid, :mangaid, :isLiked)
                `,
                    { userid: user.USER_ID, mangaid, isLiked: "TRUE" },
                    { autoCommit: true }
                );

                res.json({ isLiked: true });
            } else {
                if (userdata[0].IS_LIKED === "TRUE") {
                    await connection.execute(
                        `
                        UPDATE USER_MANGA
                        SET IS_LIKED = :isLiked
                        WHERE USER_ID = :userid AND MANGA_ID = :mangaid
                    `,
                        { isLiked: "FALSE", userid: user.USER_ID, mangaid },
                        { autoCommit: true }
                    );

                    res.json({ isLiked: false });
                } else {
                    await connection.execute(
                        `
                        UPDATE USER_MANGA
                        SET IS_LIKED = :isLiked
                        WHERE USER_ID = :userid AND MANGA_ID = :mangaid
                    `,
                        { isLiked: "TRUE", userid: user.USER_ID, mangaid },
                        { autoCommit: true }
                    );

                    res.json({ isLiked: true });
                }
            }
        } else {
            let status = req.body.mediaStatus.toUpperCase();
            let score =
                req.body.mediaScore === "" ? null : Number(req.body.mediaScore);

            if (userdata.length === 0) {
                await connection.execute(
                    `
                    INSERT INTO USER_MANGA(USER_ID, MANGA_ID, STATUS, SCORE, IS_LIKED) VALUES (:userid, :mangaid, :status, :score, :liked)
                `,
                    {
                        userid: user.USER_ID,
                        mangaid,
                        status,
                        score,
                        liked: "FALSE",
                    },
                    { autoCommit: true }
                );

                res.json({ done: true, status });
            } else {
                await connection.execute(
                    `
                    UPDATE USER_MANGA
                    SET STATUS = :status, SCORE = :score
                    WHERE USER_ID = :userid AND MANGA_ID = :mangaid
                `,
                    { status, score, userid: user.USER_ID, mangaid },
                    { autoCommit: true }
                );

                res.json({ done: true, status });
            }
        }
    } else {
        res.json({ done: true });
    }
};


const mangaIndividualReviewControllerGET = async (req, res) => {
    console.log("in the mangaIndividualReviewControllerGET");
    console.log(req.url, req.method);

    if (req.session.user) {
        let manga = req.session.manga;

        const connection = await connect();

        let reviews = (
            await connection.execute(
                `
            SELECT M.*, RM.*, U.*, (
            SELECT COUNT(*)
            FROM USER_LIKES_REVIEW_MANGA URM
            WHERE URM.REVIEW_MANGA_ID = RM.REVIEW_MANGA_ID 
        ) AS LIKES 
    FROM MANGA M JOIN REVIEW_MANGA RM ON M.MANGA_ID = RM.MANGA_ID JOIN USERR U ON RM.USER_ID = U.USER_ID
    WHERE M.MANGA_ID = :id
        `,
                {
                    id: manga.id,
                },
                {
                    outFormat: oracledb.OUT_FORMAT_OBJECT,
                }
            )
        ).rows;


        await connection.close();

        res.render("reviews_manga", {
            reviews,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME,
            mainuserimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            mainusername: req.session.user.USERNAME
        });
    } else {
        res.redirect("/login");
    }
};

const mangaIndividualSocialControllerGET = async (req, res) => {
    console.log("in the mangaIndividualSocialControllerGET");
    console.log(req.url, req.method);
    console.log(req.params);

    const obj = req.params;

    req.session.manga = {
        id: req.params.id,
        name: req.params.name,
    };

    const connection = await connect();

    // mangas
    const mangas = (
        await connection.execute(
            `
        SELECT * FROM MANGA
        WHERE MANGA_ID = :id
    `,
            {
                id: obj.id,
            },
            {
                outFormat: oracledb.OUT_FORMAT_OBJECT,
            }
        )
    ).rows;

    req.session.manga.banner = mangas[0].BANNER_IMAGE;

    // genres
    const genres = (
        await connection.execute(
            `
        SELECT GENRE_NAME
        FROM MANGA M JOIN MANGA_GENRE MG ON M.MANGA_ID = MG.MANGA_ID JOIN GENRE G ON MG.GENRE_ID = G.GENRE_ID
        WHERE M.MANGA_ID = :id
    `,
            {
                id: obj.id,
            },
            {
                outFormat: oracledb.OUT_FORMAT_OBJECT,
            }
        )
    ).rows;


    // // staffs
    // const staffs = (await connection.execute(`
    //     SELECT S.*
    //     FROM MANGA M JOIN MANGA_STAFF MST ON M.MANGA_ID = MST.MANGA_ID JOIN STAFF S ON MST.STAFF_ID = S.STAFF_ID
    //     WHERE M.MANGA_ID = :id
    // `, {
    //     id: obj.id
    // }, {
    //     outFormat: oracledb.OUT_FORMAT_OBJECT
    // })).rows

    let isLiked = null;
    let preference = null;

    if (req.session.user) {
        const userdata = (
            await connection.execute(
                `
            SELECT * FROM USER_MANGA UM
            WHERE UM.USER_ID = :userid AND UM.MANGA_ID = :mangaid
        `,
                { userid: req.session.user.USER_ID, mangaid: obj.id },
                { outFormat: oracledb.OUT_FORMAT_OBJECT }
            )
        ).rows;

        if (userdata.length == 0) isLiked = false;
        else {
            console.log("usedata: ", userdata[0]);
            if (userdata[0].IS_LIKED === "TRUE") isLiked = true;
            else isLiked = false;
            // newly added property
            preference = userdata[0];
        }
    }

    let avgScore = (
        await connection.execute(
            `
        SELECT AVG(SCORE)
        FROM USER_MANGA UA 
        WHERE MANGA_ID = :mangaid
    `,
            [obj.id]
        )
    ).rows[0][0];

    let userid = null;
    if (req.session.user) userid = req.session.user.USER_ID;

    let status = (
        await connection.execute(
            `
        SELECT UM.STATUS
        FROM MANGA M JOIN USER_MANGA UM ON M.MANGA_ID = UM.MANGA_ID
        WHERE UM.USER_ID = :userid AND M.MANGA_ID = :mangaid
    `,
            [userid, obj.id]
        )
    ).rows;

    const activities = (
        await connection.execute(
            `
       SELECT *
        FROM USER_MANGA_ACTIVITY UMA JOIN USERR U ON UMA.USER_ID = U.USER_ID JOIN MANGA M ON UMA.MANGA_ID = M.MANGA_ID
        WHERE UMA.MANGA_ID = :mangaid
        ORDER BY UMA.DATE_OF_CREATION DESC
  `,
            [obj.id],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    for(let i = 0; i < activities.length; ++i) {
        if(!activities[i].USER_IMAGE) {
            activities[i].USER_IMAGE = "/images/photos/user.png"
        }
    }

    await connection.close();

    if (req.session.user) {
        res.render("manga_individual_social", {
            manga: mangas[0],
            genres,
            isLiked,
            preference,
            avgScore,
            activities,
            status:
                status.length === 0 || status[0][0] == null
                    ? "Add to List"
                    : status[0][0],
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME,
        });
    } else {
        res.redirect("/login");
    }
};


module.exports = {
    mangaIndividualControllerGET,
    mangaIndividualControllerPOST,
    mangaIndividualReviewControllerGET,
    mangaIndividualSocialControllerGET,
};
