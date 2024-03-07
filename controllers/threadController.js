const connect = require("./connect")
const oracledb = require("oracledb")
const threadQuery = require("../queries/threadQuery")


const forumOverviewControllerGET = async (req, res) => {
    console.log("in the forumControllerGET")
    console.log(req.url, req.method)

    const connection = await connect()

    const recentThreads = (await connection.execute(threadQuery.sqlRecentActiveThread, [], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows

    const newThreads = (await connection.execute(threadQuery.sqlNewThread, [], {
        outFormat: oracledb.OUT_FORMAT_OBJECT
    })).rows

    await connection.close()

    if (req.session.user) {
        res.render("forum_overview", {
            recentThreads,
            newThreads,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        })
    } else {
        res.redirect("/login")
    }
}

const forumRecentActivityControllerGET = async (req, res) => {
    console.log("in the forumRecentActivityControllerGET");
    console.log(req.url, req.method);

    const connection = await connect();

    const recentThreads = (
        await connection.execute(threadQuery.sqlRecentActiveThread, [], {
            outFormat: oracledb.OUT_FORMAT_OBJECT,
        })
    ).rows;

    await connection.close();

    if (req.session.user) {
        res.render("forum_recent", {
            recentThreads,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME,
        });
    } else {
        res.redirect("/login");
    }
}

const forumNewThreadControllerGET = async (req, res) => {
    console.log("in the forumNewThreadControllerGET");
    console.log(req.url, req.method);

    const connection = await connect();

    const newThreads = (
        await connection.execute(threadQuery.sqlNewThread, [], {
            outFormat: oracledb.OUT_FORMAT_OBJECT,
        })
    ).rows;

    await connection.close();

    if (req.session.user) {
        res.render("forum_new", {
            newThreads,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME,
        });
    } else {
        res.redirect("/login");
    }
}

const forumSubscribedThreadControllerGET = async (req, res) => {
    console.log("in the forumSubscribedThreadControllerGET")
    console.log(req.url, req.method)

    const connection = await connect()

    let userid = req.session.user ? req.session.user.USER_ID : null

    const subscribedThreads = (await connection.execute(threadQuery.sqlSubscribedThread, [userid], {
        outFormat: oracledb.OUT_FORMAT_OBJECT
    })).rows
    
    await connection.close()

    if(req.session.user) {
        res.render("forum_subscribed", {
            subscribedThreads,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME,
        })
    } else {
        res.redirect("/login")
    }
}

const createThreadControllerGET = async (req, res) => {
    console.log(req.url, req.method)
    console.log("in the createThreadControllerGET")

    if (req.session.user) {
        res.render("create_a_thread", {
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        })
    } else {
        res.redirect("/login")
    }
}

const createThreadControllerPOST = async (req, res) => {
    console.log(req.url, req.method)
    console.log("in the createThreadControllerPOST")

    if (req.session.user) {

        if (req.body.hasOwnProperty("post")) {
            title = req.body.search === "" ? "NaN" : req.body.search;
            console.log(title);

            const connection = await connect();

            const animes = (
                await connection.execute(
                    `
            SELECT ENGLISH
            FROM ANIME A
            WHERE UPPER(A.ENGLISH) LIKE '%' || UPPER(:title) || '%' AND UPPER(:title) <> 'NaN'
        `,
                    [title, title],
                    { outFormat: oracledb.OUT_FORMAT_OBJECT }
                )
            ).rows;

            const mangas = (
                await connection.execute(
                    `
            SELECT ENGLISH
            FROM MANGA M
            WHERE UPPER(M.ENGLISH) LIKE '%' || UPPER(:title) || '%' AND UPPER(:title) <> 'NaN'
        `,
                    [title, title],
                    { outFormat: oracledb.OUT_FORMAT_OBJECT }
                )
            ).rows;

            for (let i = 0; i < animes.length; ++i) {
                animes[i].type = "anime"
            }

            for (let i = 0; i < mangas.length; ++i) {
                mangas[i].type = "manga"
            }

            const medias = animes.concat(mangas);

            res.json({ medias });

            await connection.close();
        } else {
            console.log("create section")
            const obj = req.body
            
            console.log(obj)

            let userid = req.session.user.USER_ID
            let animeid = null 
            let mangaid = null

            const connection = await connect()

            if(obj.hasOwnProperty("anime")) {
                animeid = (await connection.execute(`
                    SELECT ANIME_ID
                    FROM ANIME A
                    WHERE UPPER(ENGLISH) = UPPER(:name)
                `, [obj.anime])).rows[0][0]

            } else if(obj.hasOwnProperty("manga")) {
                mangaid = (await connection.execute(`
                    SELECT MANGA_ID
                    FROM MANGA M
                    WHERE UPPER(ENGLISH) = UPPER(:name)
                `, [obj.manga])).rows[0][0]

            }

            await connection.execute(`
                INSERT INTO THREAD(THREAD_TITLE, THREAD_BODY, USER_ID, ANIME_ID, MANGA_ID) VALUES (:title, :body, :userid, :animeid, :mangaid)
            `, [obj.title, obj.body, userid, animeid, mangaid], {autoCommit: true})

            const threadid = (await connection.execute(`
                SELECT MAX(THREAD_ID)
                FROM THREAD
            `, [])).rows[0][0]
            

            if (obj.hasOwnProperty("category")) {
                if (Array.isArray(obj.category)) {
                    for (let i = 0; i < obj.category.length; ++i) {
                        const categoryid = (
                            await connection.execute(
                            `
                                    SELECT CATEGORY_ID
                                    FROM CATEGORY C
                                    WHERE C.CATEGORY_NAME = UPPER(:category)
                                `,
                            [obj.category[i]]
                            )
                        ).rows[0][0];

                        
                        await connection.execute(`
                            INSERT INTO THREAD_CATEGORY VALUES (:threadid, :categoryid)
                        `, [threadid, categoryid], {autoCommit: true})

                    }
                } else {
                    const categoryid = (await connection.execute(`
                        SELECT CATEGORY_ID
                        FROM CATEGORY C
                        WHERE C.CATEGORY_NAME = UPPER(:category)
                    `, [obj.category])).rows[0][0]

                    await connection.execute(`
                        INSERT INTO THREAD_CATEGORY VALUES (:threadid, :categoryid)
                    `, [threadid, categoryid], {autoCommit: true})
                }
            }

            await connection.close()

            res.redirect("/forum/overview")
        }

    } else {
        res.json({ session: "log in again" })
    }
}

const forumThreadControllerGET = async (req, res) => {
    console.log("in the forumThreadControllerGET")
    console.log(req.url, req.method)
    console.log(req.params)

    if(req.session.user) {
        res.render("thread", {
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        })
    } else {
        res.redirect("/login")
    }
}

const forumThreadControllerPOST = async (req, res) => {
    console.log("in the forumThreadControllerPOST")
    console.log(req.url, req.method)
}


module.exports = {
    createThreadControllerGET,
    createThreadControllerPOST,
    forumOverviewControllerGET,
    forumRecentActivityControllerGET,
    forumNewThreadControllerGET,
    forumSubscribedThreadControllerGET,
    forumThreadControllerGET,
    forumThreadControllerPOST,
}