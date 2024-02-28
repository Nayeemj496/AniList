const connect = require("../controllers/connect");
const oracledb = require("oracledb");


const userProfileControllerGET = async (req, res) => {
    console.log("in the userProfileControllerGET");
    console.log(req.url, req.method);

    let username = req.url.split("/")[2]
    let userid = null

    const connection = await connect();

    let user = (await connection.execute(`
        SELECT *
        FROM USERR U
        WHERE U.USERNAME = :username
    `, [username], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows


    if(user.length) {
        userid = user[0].USER_ID
    } else {
        res.redirect("/login")
    }

    
    const action = (
        await connection.execute(
            `
        SELECT UA.USER_ID, G.GENRE_NAME, COUNT(*) AS COUNT
        FROM USER_ANIME UA JOIN ANIME A ON UA.ANIME_ID = A.ANIME_ID JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        GROUP BY UA.USER_ID, G.GENRE_NAME
        HAVING UPPER(G.GENRE_NAME) = 'ACTION' AND UA.USER_ID = :userid			
    `,
            [userid],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    const drama = (
      await connection.execute(
        `
        SELECT UA.USER_ID, G.GENRE_NAME, COUNT(*) AS COUNT
        FROM USER_ANIME UA JOIN ANIME A ON UA.ANIME_ID = A.ANIME_ID JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        GROUP BY UA.USER_ID, G.GENRE_NAME
        HAVING UPPER(G.GENRE_NAME) = 'DRAMA' AND UA.USER_ID = :userid			
    `,
        [userid],
        { outFormat: oracledb.OUT_FORMAT_OBJECT }
      )
    ).rows;

    const fantasy = (
      await connection.execute(
        `
        SELECT UA.USER_ID, G.GENRE_NAME, COUNT(*) AS COUNT
        FROM USER_ANIME UA JOIN ANIME A ON UA.ANIME_ID = A.ANIME_ID JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        GROUP BY UA.USER_ID, G.GENRE_NAME
        HAVING UPPER(G.GENRE_NAME) = 'FANTASY' AND UA.USER_ID = :userid			
    `,
        [userid],
        { outFormat: oracledb.OUT_FORMAT_OBJECT }
      )
    ).rows;

    const adventure = (
      await connection.execute(
        `
        SELECT UA.USER_ID, G.GENRE_NAME, COUNT(*) AS COUNT
        FROM USER_ANIME UA JOIN ANIME A ON UA.ANIME_ID = A.ANIME_ID JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        GROUP BY UA.USER_ID, G.GENRE_NAME
        HAVING UPPER(G.GENRE_NAME) = 'ADVENTURE' AND UA.USER_ID = :userid			
    `,
        [userid],
        { outFormat: oracledb.OUT_FORMAT_OBJECT }
      )
    ).rows;

    const animes = (
        await connection.execute(
            `
        SELECT *
        FROM USER_ANIME UA JOIN ANIME A ON UA.ANIME_ID = A.ANIME_ID
        WHERE UA.USER_ID = :userid AND UA.IS_LIKED = 'TRUE'
    `,
            [userid],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    const mangas = (
        await connection.execute(
            `
        SELECT *
        FROM USER_MANGA UM JOIN MANGA M ON UM.MANGA_ID = M.MANGA_ID
        WHERE UM.USER_ID = :userid AND UM.IS_LIKED = 'TRUE'
  `,
            [userid],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    const characters = (
        await connection.execute(
            `
        SELECT *
        FROM USER_LIKES_CHARACTER ULC JOIN CHARACTER C ON ULC.CHARACTER_ID = C.CHARACTER_ID
        WHERE ULC.USER_ID = :userid
  `,
            [userid],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    const staffs = (await connection.execute(`
        SELECT *
        FROM USER_LIKES_STAFF ULS JOIN STAFF S ON ULS.STAFF_ID = S.STAFF_ID
        WHERE ULS.USER_ID = :userid
    `, [userid], { outFormat: oracledb.OUT_FORMAT_OBJECT })).rows

    const voiceArtists = (await connection.execute(`
        SELECT *
        FROM USER_LIKES_VA ULV JOIN VOICE_ARTIST VA ON ULV.VA_ID = VA.VA_ID
        WHERE ULV.USER_ID = :userid
    `, [userid], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows

    // console.log(animes.length, mangas.length, characters.length, staffs.length);


    await connection.close()

    if (req.session.user) {
        res.render("profile", {
            animes,
            mangas,
            characters,
            staffs,
            voiceArtists,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: user[0].USER_IMAGE || "/images/photos/user.png",
            mainuserimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: user[0].USERNAME,
            mainusername: req.session.user.USERNAME,
            actionLength: action.length,
            dramaLength: drama.length,
            fantasyLength: fantasy.length,
            adventureLength: adventure.length
        });
    } else {
        res.redirect("/login");
    }
};


const userAnimeListControllerGET = async (req, res) => {
    console.log("in the userAnimeListControllerGET")
    console.log(req.url, req.method)

    let username = req.url.split("/")[2];
    let userid = null;

    const connection = await connect();

    let user = (
      await connection.execute(
        `
        SELECT *
        FROM USERR U
        WHERE U.USERNAME = :username
    `,
        [username],
        { outFormat: oracledb.OUT_FORMAT_OBJECT }
      )
    ).rows;


    if (user.length) {
      userid = user[0].USER_ID;
    } else {
      res.redirect("/login");
    }

    const watching = (await connection.execute(
        `
                SELECT UA.*, A.* , (
            SELECT AVG(UANIME.SCORE)
            FROM USER_ANIME UANIME 
            WHERE UANIME.ANIME_ID = A.ANIME_ID
        ) AS AVERAGE_SCORE
        FROM USER_ANIME UA JOIN ANIME A ON UA.ANIME_ID = A.ANIME_ID
        WHERE UA.USER_ID = :userid AND UA.STATUS = 'WATCHING'
        `,
        [userid],
        { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )).rows;

    const completed = (
        await connection.execute(
            `
                SELECT UA.*, A.* , (
            SELECT AVG(UANIME.SCORE)
            FROM USER_ANIME UANIME 
            WHERE UANIME.ANIME_ID = A.ANIME_ID
        ) AS AVERAGE_SCORE
        FROM USER_ANIME UA JOIN ANIME A ON UA.ANIME_ID = A.ANIME_ID
        WHERE UA.USER_ID = :userid AND UA.STATUS = 'COMPLETED'
        `,
            [userid],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    const paused = (
        await connection.execute(
            `
                SELECT UA.*, A.* , (
            SELECT AVG(UANIME.SCORE)
            FROM USER_ANIME UANIME 
            WHERE UANIME.ANIME_ID = A.ANIME_ID
        ) AS AVERAGE_SCORE
        FROM USER_ANIME UA JOIN ANIME A ON UA.ANIME_ID = A.ANIME_ID
        WHERE UA.USER_ID = :userid AND UA.STATUS = 'PAUSED'
        `,
            [userid],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    const planning = (
        await connection.execute(
            `
                SELECT UA.*, A.* , (
            SELECT AVG(UANIME.SCORE)
            FROM USER_ANIME UANIME 
            WHERE UANIME.ANIME_ID = A.ANIME_ID
        ) AS AVERAGE_SCORE
        FROM USER_ANIME UA JOIN ANIME A ON UA.ANIME_ID = A.ANIME_ID
        WHERE UA.USER_ID = :userid AND UA.STATUS = 'PLAN_TO_WATCH'
        `,
            [userid],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    const dropped = (
        await connection.execute(
            `
                SELECT UA.*, A.* , (
            SELECT AVG(UANIME.SCORE)
            FROM USER_ANIME UANIME 
            WHERE UANIME.ANIME_ID = A.ANIME_ID
        ) AS AVERAGE_SCORE
        FROM USER_ANIME UA JOIN ANIME A ON UA.ANIME_ID = A.ANIME_ID
        WHERE UA.USER_ID = :userid AND UA.STATUS = 'DROPPED'
        `,
            [userid],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;


    if (req.session.user) {
        res.render("animeList", {
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: user[0].USER_IMAGE || "/images/photos/user.png",
            mainuserimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: user[0].USERNAME,
            mainusername: req.session.user.USERNAME,
            watching,
            completed,
            paused,
            planning,
            dropped
        })
    } else {
        res.redirect("/login")
    }
}


const userMangaListControllerGET = async (req, res) => {
    console.log("in the userMangaListControllerGET");
    console.log(req.url, req.method);

    let username = req.url.split("/")[2];
    let userid = null;

    const connection = await connect();

    let user = (
      await connection.execute(
        `
        SELECT *
        FROM USERR U
        WHERE U.USERNAME = :username
    `,
        [username],
        { outFormat: oracledb.OUT_FORMAT_OBJECT }
      )
    ).rows;


    if (user.length) {
      userid = user[0].USER_ID;
    } else {
      res.redirect("/login");
    }

    const reading = (
        await connection.execute(
            `
                SELECT UM.*, M.* , (
            SELECT AVG(UMANGA.SCORE)
            FROM USER_MANGA UMANGA 
            WHERE UMANGA.MANGA_ID = M.MANGA_ID
        ) AS AVERAGE_SCORE
        FROM USER_MANGA UM JOIN MANGA M ON UM.MANGA_ID = M.MANGA_ID
        WHERE UM.USER_ID = :userid AND UM.STATUS = 'READING'
        `,
            [userid],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    const completed = (
        await connection.execute(
            `
                SELECT UM.*, M.* , (
            SELECT AVG(UMANGA.SCORE)
            FROM USER_MANGA UMANGA 
            WHERE UMANGA.MANGA_ID = M.MANGA_ID
        ) AS AVERAGE_SCORE
        FROM USER_MANGA UM JOIN MANGA M ON UM.MANGA_ID = M.MANGA_ID
        WHERE UM.USER_ID = :userid AND UM.STATUS = 'COMPLETED'
        `,
            [userid],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    const paused = (
        await connection.execute(
            `
                SELECT UM.*, M.* , (
            SELECT AVG(UMANGA.SCORE)
            FROM USER_MANGA UMANGA 
            WHERE UMANGA.MANGA_ID = M.MANGA_ID
        ) AS AVERAGE_SCORE
        FROM USER_MANGA UM JOIN MANGA M ON UM.MANGA_ID = M.MANGA_ID
        WHERE UM.USER_ID = :userid AND UM.STATUS = 'PAUSED'
        `,
            [userid],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    const planning = (
        await connection.execute(
            `
                SELECT UM.*, M.* , (
            SELECT AVG(UMANGA.SCORE)
            FROM USER_MANGA UMANGA 
            WHERE UMANGA.MANGA_ID = M.MANGA_ID
        ) AS AVERAGE_SCORE
        FROM USER_MANGA UM JOIN MANGA M ON UM.MANGA_ID = M.MANGA_ID
        WHERE UM.USER_ID = :userid AND UM.STATUS = 'PLAN_TO_READ'
        `,
            [userid],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    const dropped = (
        await connection.execute(
            `
                SELECT UM.*, M.* , (
            SELECT AVG(UMANGA.SCORE)
            FROM USER_MANGA UMANGA 
            WHERE UMANGA.MANGA_ID = M.MANGA_ID
        ) AS AVERAGE_SCORE
        FROM USER_MANGA UM JOIN MANGA M ON UM.MANGA_ID = M.MANGA_ID
        WHERE UM.USER_ID = :userid AND UM.STATUS = 'DROPPED'
        `,
            [userid],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;


    if (req.session.user) {
        res.render("mangaList", {
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: user[0].USER_IMAGE || "/images/photos/user.png",
            mainuserimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: user[0].USERNAME,
            mainusername: req.session.user.USERNAME,
            reading,
            completed,
            paused,
            planning,
            dropped,
        });
    } else {
        res.redirect("/login");
    }
};


const userHomeControllerGET = async (req, res) => {
    console.log("in the userHomeControllerGET")
    console.log(req.url, req.method)

    let userid = null

    if (req.session.user) {
        userid = req.session.user.USER_ID
    }

    const connection = await connect()

    const watching = (await connection.execute(`
        SELECT *
        FROM USER_ANIME UA JOIN ANIME A ON UA.ANIME_ID = A.ANIME_ID
        WHERE UA.USER_ID = :userid AND UPPER(UA.STATUS) = 'WATCHING'
        ORDER BY A.ENGLISH
    `, [userid], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows


    const reading = (await connection.execute(`
        SELECT *
        FROM USER_MANGA UM JOIN MANGA M ON UM.MANGA_ID = M.MANGA_ID
        WHERE UM.USER_ID = :userid AND UPPER(UM.STATUS) = 'READING'
        ORDER BY M.ENGLISH
    `, [userid], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows


    const recentAnimeReviews = ( await connection.execute(
        `
        SELECT A.*, RA.*, U.*, (
                        SELECT COUNT(*)
                        FROM USER_LIKES_REVIEW_ANIME URA
                        WHERE URA.REVIEW_ANIME_ID = RA.REVIEW_ANIME_ID 
                    ) AS LIKES 
                FROM ANIME A JOIN REVIEW_ANIME RA ON A.ANIME_ID = RA.ANIME_ID JOIN USERR U ON RA.USER_ID = U.USER_ID
                ORDER BY RA.DATE_OF_CREATION_ANIME DESC
    `,
        [],
        { outFormat: oracledb.OUT_FORMAT_OBJECT })
    ).rows;


    const recentMangaReviews = (await connection.execute(
        ` SELECT M.*, RM.*, U.*, (
                        SELECT COUNT(*)
                        FROM USER_LIKES_REVIEW_MANGA URM
                        WHERE URM.REVIEW_MANGA_ID = RM.REVIEW_MANGA_ID 
                    ) AS LIKES 
                FROM MANGA M JOIN REVIEW_MANGA RM ON M.MANGA_ID = RM.MANGA_ID JOIN USERR U ON RM.USER_ID = U.USER_ID
                ORDER BY RM.DATE_OF_CREATION_MANGA DESC
    `,
        [],
        { outFormat: oracledb.OUT_FORMAT_OBJECT })).rows;


    await connection.close()

    if (req.session.user) {
        res.render("user_homepage", {
            watching,
            reading,
            recentAnimeReviews,
            recentMangaReviews,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        })
    } else {
        res.redirect("/login")
    }
}


const userSettingsControllerGET = async (req, res) => {
    console.log("in the userSettingsController")
    console.log(req.url, req.method)
}


const userControllerPOST = async (req, res) => {
    console.log("in the userControllerPOST");
    console.log(req.url, req.method);
};


module.exports = {
    userProfileControllerGET,
    userAnimeListControllerGET,
    userMangaListControllerGET,
    userHomeControllerGET,
    userSettingsControllerGET,
    userControllerPOST,
};
