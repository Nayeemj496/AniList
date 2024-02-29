const connect = require("../controllers/connect");
const oracledb = require("oracledb");

const animeReviewControllerGET = async (req, res) => {
    console.log(req.url, req.method);
    console.log("in the animeReviewControllerGET");
    console.log(req.query);

    const obj = req.query;

    let length = Object.keys(obj).length;

    let allAnimeReviews = null;

    const connection = await connect();

    allAnimeReviews = (
        await connection.execute(
            `
        SELECT A.*, RA.*, U.*, (
            SELECT COUNT(*)
            FROM USER_LIKES_REVIEW_ANIME URA
            WHERE URA.REVIEW_ANIME_ID = RA.REVIEW_ANIME_ID 
        ) AS LIKES 
    FROM ANIME A JOIN REVIEW_ANIME RA ON A.ANIME_ID = RA.ANIME_ID JOIN USERR U ON RA.USER_ID = U.USER_ID
    ORDER BY RA.DATE_OF_CREATION_ANIME DESC
    `,
            {},
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    console.log(req.session.user)

    await connection.close();

    if (req.session.user) {
        res.render("reviews_anime", {
            reviews: allAnimeReviews,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME,
            mainusername: req.session.user.USERNAME,
            mainuserimage: req.session.user.USER_IMAGE
        });
    } else {
        res.redirect("/login");
    }
};

const animeIndividualReviewControllerGET = async (req, res) => {
    console.log("in the animeIndividualReviewControllerGET");
    console.log(req.url, req.method);

    const reviewid = req.url.split("/")[3];

    const connection = await connect();

    let totalUsers = (
        await connection.execute(`
    SELECT COUNT(*) AS TOTAL FROM USERR
    `)
    ).rows[0][0];

    let likes = (
        await connection.execute(
            `
            SELECT COUNT(*)
            FROM USER_LIKES_REVIEW_ANIME
            WHERE REVIEW_ANIME_ID = :reviewid
    `,
            { reviewid }
        )
    ).rows[0][0];

    const review = (
        await connection.execute(
            `
        SELECT * 
        FROM ANIME A JOIN REVIEW_ANIME RA ON A.ANIME_ID = RA.ANIME_ID JOIN USERR U ON RA.USER_ID = U.USER_ID
        WHERE RA.REVIEW_ANIME_ID = :reviewid
    `,
            { reviewid },
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows[0];

    if (req.session.user) {
        let isLiked =
            (
                await connection.execute(
                    `
            SELECT COUNT(*)
            FROM USER_LIKES_REVIEW_ANIME
            WHERE USER_ID = :userid AND REVIEW_ANIME_ID = :reviewid
        `,
                    { userid: req.session.user.USER_ID, reviewid }
                )
            ).rows[0][0] === 1
                ? true
                : false;

        console.log("isLiked ", isLiked);

        await connection.close();

        res.render("review_anime", {
            review,
            totalUsers,
            likes,
            isLiked,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        });
    } else {
        res.redirect("/login");
    }
};

const mangaReviewControllerGET = async (req, res) => {
    console.log(req.url, req.method);
    console.log("in the mangaReviewControllerGET");
    console.log(req.query);

    const obj = req.query;

    let length = Object.keys(obj).length;

    let allMangaReviews = null;

    const connection = await connect();

    allMangaReviews = (
        await connection.execute(
            `
        SELECT M.*, RM.*, U.*, (
            SELECT COUNT(*)
            FROM USER_LIKES_REVIEW_MANGA URM
            WHERE URM.REVIEW_MANGA_ID = RM.REVIEW_MANGA_ID 
        ) AS LIKES 
    FROM MANGA M JOIN REVIEW_MANGA RM ON M.MANGA_ID = RM.MANGA_ID JOIN USERR U ON RM.USER_ID = U.USER_ID
    ORDER BY RM.DATE_OF_CREATION_MANGA DESC
        `,
            {},
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows;

    await connection.close();

    if (req.session.user) {
        res.render("reviews_manga", {
            reviews: allMangaReviews,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME,
            mainusername: req.session.user.USERNAME,
            // changes have been done
            mainuserimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
        });
    } else {
        res.redirect("/login");
    }
};

const mangaIndividualReviewControllerGET = async (req, res) => {
    console.log("in the mangaIndividualReviewControllerGET");
    console.log(req.url, req.method);

    const reviewid = req.url.split("/")[3];

    const connection = await connect();

    let totalUsers = (
        await connection.execute(`
    SELECT COUNT(*) AS TOTAL FROM USERR
    `)
    ).rows[0][0];

    let likes = (
        await connection.execute(
            `
            SELECT COUNT(*)
            FROM USER_LIKES_REVIEW_MANGA
            WHERE REVIEW_MANGA_ID = :reviewid
    `,
            { reviewid }
        )
    ).rows[0][0];

    const review = (
        await connection.execute(
            `
        SELECT * 
        FROM MANGA M JOIN REVIEW_MANGA RM ON M.MANGA_ID = RM.MANGA_ID JOIN USERR U ON RM.USER_ID = U.USER_ID
        WHERE RM.REVIEW_MANGA_ID = :reviewid
    `,
            { reviewid },
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
    ).rows[0];

    if (req.session.user) {
        let isLiked =
            (
                await connection.execute(
                    `
            SELECT COUNT(*)
            FROM USER_LIKES_REVIEW_MANGA
            WHERE USER_ID = :userid AND REVIEW_MANGA_ID = :reviewid
        `,
                    { userid: req.session.user.USER_ID, reviewid }
                )
            ).rows[0][0] === 1
                ? true
                : false;

        console.log("isLiked ", isLiked);

        await connection.close();

        res.render("review_manga", {
            review,
            totalUsers,
            likes,
            isLiked,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        });
    } else {
        res.redirect("/login");
    }
};

const animeIndividualReviewControllerPOST = async (req, res) => {
    console.log("in the animeIndividualReviewControllerPOST");
    console.log(req.url, req.method);

    reviewid = Number(req.params.id);

    console.log("reviewid: " + reviewid);

    const connection = await connect();

    if (req.session.user) {
        let isLiked = (
            await connection.execute(
                `
            SELECT COUNT(*)
            FROM USER_LIKES_REVIEW_ANIME
            WHERE USER_ID = :userid AND REVIEW_ANIME_ID = :reviewid
        `,
                { userid: req.session.user.USER_ID, reviewid }
            )
        ).rows[0][0];

        if (isLiked) {
            await connection.execute(
                `
                DELETE FROM USER_LIKES_REVIEW_ANIME
                WHERE USER_ID = :userid AND REVIEW_ANIME_ID = :reviewid
            `,
                [req.session.user.USER_ID, reviewid]
            );

            res.json({ isLiked: false });
        } else {
            await connection.execute(
                `
                INSERT INTO USER_LIKES_REVIEW_ANIME(USER_ID, REVIEW_ANIME_ID)
                VALUES (:userid, :reviewid)
            `,
                [req.session.user.USER_ID, reviewid]
            );

            res.json({ isLiked: true });
        }
    } else {
        res.redirect("/login");
    }
};

const mangaIndividualReviewControllerPOST = async (req, res) => {
    console.log("in the mangaIndividualReviewControllerPOST");
    console.log(req.url, req.method);

    reviewid = Number(req.params.id);

    console.log("reviewid: " + reviewid);

    const connection = await connect();

    if (req.session.user) {
        let isLiked = (
            await connection.execute(
                `
            SELECT COUNT(*)
            FROM USER_LIKES_REVIEW_MANGA
            WHERE USER_ID = :userid AND REVIEW_MANGA_ID = :reviewid
        `,
                { userid: req.session.user.USER_ID, reviewid }
            )
        ).rows[0][0];

        if (isLiked) {
            await connection.execute(
                `
                DELETE FROM USER_LIKES_REVIEW_MANGA
                WHERE USER_ID = :userid AND REVIEW_MANGA_ID = :reviewid
            `,
                [req.session.user.USER_ID, reviewid]
            );

            res.json({ isLiked: false });
        } else {
            await connection.execute(
                `
                INSERT INTO USER_LIKES_REVIEW_MANGA(USER_ID, REVIEW_MANGA_ID)
                VALUES (:userid, :reviewid)
            `,
                [req.session.user.USER_ID, reviewid]
            );

            res.json({ isLiked: true });
        }
    } else {
        res.redirect("/login");
    }
};


const userAnimeReviewControllerGET = async (req, res) => {
  console.log(req.url, req.method);
  console.log("in the userReviewControllerGET");

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

    console.log(user);

    if (user.length) {
      userid = user[0].USER_ID;
    } else {
      res.redirect("/login");
    }
    
    const animeReviews = (await connection.execute(`
                    SELECT A.*, RA.*, U.*, (
                        SELECT COUNT(*)
                        FROM USER_LIKES_REVIEW_ANIME URA
                        WHERE URA.REVIEW_ANIME_ID = RA.REVIEW_ANIME_ID 
                    ) AS LIKES 
                FROM ANIME A JOIN REVIEW_ANIME RA ON A.ANIME_ID = RA.ANIME_ID JOIN USERR U ON RA.USER_ID = U.USER_ID
                WHERE U.USER_ID = :userid
                ORDER BY RA.DATE_OF_CREATION_ANIME DESC
            `, [userid], {outFormat: oracledb.OUT_FORMAT_OBJECT})
        ).rows;

    await connection.close()

    if (req.session.user) {
        res.render("reviews_anime", {
            reviews: animeReviews,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: user[0].USER_IMAGE || "/images/photos/user.png",
            username: user[0].USERNAME,
            mainuserimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            mainusername: req.session.user.USERNAME,
        });
    } else {
        res.redirect("/login");
    }
};


const userMangaReviewControllerGET = async (req, res) => {
  console.log(req.url, req.method);
  console.log("in the userMangaReviewControllerGET");

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

  console.log(user);

  if (user.length) {
    userid = user[0].USER_ID;
  } else {
    res.redirect("/login");
  }

  const mangaReviews = (
    await connection.execute(
      `
                    SELECT M.*, RM.*, U.*, (
                        SELECT COUNT(*)
                        FROM USER_LIKES_REVIEW_MANGA URM
                        WHERE URM.REVIEW_MANGA_ID = RM.REVIEW_MANGA_ID 
                    ) AS LIKES 
                FROM MANGA M JOIN REVIEW_MANGA RM ON M.MANGA_ID = RM.MANGA_ID JOIN USERR U ON RM.USER_ID = U.USER_ID
                WHERE U.USER_ID = :userid
                ORDER BY RM.DATE_OF_CREATION_MANGA DESC
            `,
      [userid],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;

  await connection.close();

  if (req.session.user) {
    res.render("reviews_manga", {
      reviews: mangaReviews,
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: user[0].USER_IMAGE || "/images/photos/user.png",
      username: user[0].USERNAME,
      mainuserimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      mainusername: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

module.exports = {
    animeReviewControllerGET,
    animeIndividualReviewControllerGET,
    mangaReviewControllerGET,
    mangaIndividualReviewControllerGET,
    animeIndividualReviewControllerPOST,
    mangaIndividualReviewControllerPOST,
    userAnimeReviewControllerGET,
    userMangaReviewControllerGET,
};
