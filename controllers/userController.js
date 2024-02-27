const connect = require("../controllers/connect");
const oracledb = require("oracledb");

const userProfileControllerGET = async (req, res) => {
    console.log("in the userControllerGET");
    console.log(req.url, req.method);

    let userid = null;

    if (req.session.user) {
        userid = req.session.user.USER_ID;
    }

    const connection = await connect();

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

    console.log(voiceArtists)

    await connection.close()

    if (req.session.user) {
        res.render("profile", {
            animes,
            mangas,
            characters,
            staffs,
            voiceArtists,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME,
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

    let userid = null

    if (req.session.user) {
        userid = req.session.user.USER_ID
    }

    const connection = await connect()

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
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME,
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

    let userid = null;

    if (req.session.user) {
        userid = req.session.user.USER_ID;
    }

    const connection = await connect();

    const watching = (
        await connection.execute(
            `
                SELECT UM.*, M.* , (
            SELECT AVG(UMANGA.SCORE)
            FROM USER_MANGA UMANGA 
            WHERE UMANGA.MANGA_ID = M.MANGA_ID
        ) AS AVERAGE_SCORE
        FROM USER_MANGA UM JOIN MANGA M ON UM.MANGA_ID = M.MANGA_ID
        WHERE UM.USER_ID = :userid AND UM.STATUS = 'WATCHING'
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
        WHERE UM.USER_ID = :userid AND UM.STATUS = 'PLAN_TO_WATCH'
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
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME,
            watching,
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
        WHERE UM.USER_ID = :userid AND UPPER(UM.STATUS) = 'WATCHING'
        ORDER BY M.ENGLISH
    `, [userid], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows

    console.log(reading)

    const userAnimeReviews = (await connection.execute(`
        SELECT *
        FROM REVIEW_ANIME RA JOIN ANIME A ON RA.ANIME_ID = A.ANIME_ID
        WHERE RA.USER_ID = :userid
    `, [userid], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows


    const userMangaReviews = (await connection.execute(`
        SELECT *
        FROM REVIEW_MANGA RM JOIN MANGA M ON RM.MANGA_ID = M.MANGA_ID
        WHERE RM.USER_ID = :userid
    `, [userid], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows


    await connection.close()

    if (req.session.user) {
        res.render("user_homepage", {
            watching,
            reading,
            userAnimeReviews,
            userMangaReviews,
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
