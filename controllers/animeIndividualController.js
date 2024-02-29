const connect = require("./connect");
const oracledb = require("oracledb");

const animeIndividualControllerGET = async (req, res) => {
  console.log("in the animeIndividualControllerGET");
  console.log(req.url, req.method);
  console.log(req.params);

  const obj = req.params;

  req.session.anime = {
    id: obj.id,
    name: obj.name,
  };

  const connection = await connect();

  // animes
  const animes = (
    await connection.execute(
      `
        SELECT * FROM ANIME
        WHERE ANIME_ID = :id
    `,
      {
        id: obj.id,
      },
      {
        outFormat: oracledb.OUT_FORMAT_OBJECT,
      }
    )
  ).rows;

  req.session.anime.banner = animes[0].BANNER_IMAGE;

  // genres
  const genres = (
    await connection.execute(
      `
        SELECT GENRE_NAME
        FROM ANIME A JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE A.ANIME_ID = :id
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
        SELECT AA.ANIME_ID, AA.ENGLISH, AA.FORMAT, AA.STATUS, AA.COVER_IMAGE
        FROM ANIME A JOIN ANIME_RELATED AR ON A.ANIME_ID = AR.ANIME_ID JOIN ANIME AA ON AR.RELATED_ANIME_ID = AA.ANIME_ID
        WHERE A.ANIME_ID = :id
        ORDER BY AA.ENGLISH
    `,
      {
        id: obj.id,
      },
      {
        outFormat: oracledb.OUT_FORMAT_OBJECT,
      }
    )
  ).rows;

  // studios
  const studios = (
    await connection.execute(
      `
        SELECT A.*, S.*
        FROM ANIME A JOIN ANIME_STUDIO AST ON A.ANIME_ID = AST.ANIME_ID JOIN STUDIO S ON AST.STUDIO_ID = S.STUDIO_ID
        WHERE A.ANIME_ID = :id
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

  // manga
  const mangas = (
    await connection.execute(
      `
        SELECT M.*
        FROM ANIME A JOIN MANGA M ON A.MANGA_ID = M.MANGA_ID
        WHERE A.ANIME_ID = :id
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
        SELECT C.*, VA.*
        FROM ANIME A JOIN HAS H ON A.ANIME_ID = H.ANIME_ID JOIN CHARACTER C ON H.CHARACTER_ID = C.CHARACTER_ID JOIN VOICE_ARTIST VA ON C.VA_ID = VA.VA_ID 
        WHERE A.ANIME_ID = :id
    `,
      {
        id: obj.id,
      },
      {
        outFormat: oracledb.OUT_FORMAT_OBJECT,
      }
    )
  ).rows;

  // staffs
  const staffs = (
    await connection.execute(
      `
        SELECT S.*
        FROM ANIME A JOIN ANIME_STAFF AST ON A.ANIME_ID = AST.ANIME_ID JOIN STAFF S ON AST.STAFF_ID = S.STAFF_ID
        WHERE A.ANIME_ID = :id 
    `,
      {
        id: obj.id,
      },
      {
        outFormat: oracledb.OUT_FORMAT_OBJECT,
      }
    )
  ).rows;

  let isLiked = null;
  let preference = null;

  if (req.session.user) {
    const userdata = (
      await connection.execute(
        `
            SELECT * FROM USER_ANIME UA
            WHERE UA.USER_ID = :userid AND UA.ANIME_ID = :animeid
        `,
        { userid: req.session.user.USER_ID, animeid: obj.id },
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

  console.log(isLiked);

  let watching = (
    await connection.execute(
      `
        SELECT COUNT(*) AS "WATCHING"
        FROM USER_ANIME UA
        WHERE ANIME_ID = :animeid AND STATUS = 'WATCHING'
    `,
      [obj.id]
    )
  ).rows[0][0];

  let planning = (
    await connection.execute(
      `
        SELECT COUNT(*) AS "PLANNING"
        FROM USER_ANIME UA
        WHERE ANIME_ID = :animeid AND STATUS = 'PLAN_TO_WATCH'
    `,
      [obj.id]
    )
  ).rows[0][0];

  let completed = (
    await connection.execute(
      `
        SELECT COUNT(*) AS "COMPLETED"
        FROM USER_ANIME UA
        WHERE ANIME_ID = :animeid AND STATUS = 'COMPLETED'
    `,
      [obj.id]
    )
  ).rows[0][0];

  let paused = (
    await connection.execute(
      `
        SELECT COUNT(*) AS "PAUSED"
        FROM USER_ANIME UA
        WHERE ANIME_ID = :animeid AND STATUS = 'PAUSED'
    `,
      [obj.id]
    )
  ).rows[0][0];

  let dropped = (
    await connection.execute(
      `
        SELECT COUNT(*) AS "DROPPED"
        FROM USER_ANIME UA
        WHERE ANIME_ID = :animeid AND STATUS = 'DROPPED'
    `,
      [obj.id]
    )
  ).rows[0][0];

  let avgScore = (
    await connection.execute(
      `
        SELECT AVG(SCORE)
        FROM USER_ANIME UA 
        WHERE ANIME_ID = :animeid
    `,
      [obj.id]
    )
  ).rows[0][0];

  let userid = null
  if(req.session.user) userid = req.session.user.USER_ID

  let status = (
    await connection.execute(
      `
        SELECT UA.STATUS
        FROM ANIME A JOIN USER_ANIME UA ON A.ANIME_ID = UA.ANIME_ID
        WHERE UA.USER_ID = :userid AND A.ANIME_ID = :animeid
    `,
      [userid, obj.id]
    )
  ).rows;

  await connection.close();

  if (req.session.user) {
    res.render("anime_individual", {
      anime: animes[0],
      genres,
      relations,
      studios,
      mangas,
      characters,
      staffs,
      isLiked,
      // newly added object
      preference,
      watching,
      planning,
      completed,
      paused,
      dropped,
      avgScore,
      status: status.length === 0 || status[0][0] === null ? 'Add to List' : status[0][0],
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME
    });
  } else {
    res.redirect("/login");
  }
};

const animeIndividualSocialControllerGET = async (req, res) => {
  console.log("in the animeIndividualSocialControllerGET")
  console.log(req.url, req.method)
  console.log(req.params)

  const obj = req.params

  req.session.anime = {
    id: obj.id,
    name: obj.name,
  }

  const connection = await connect();

  // animes
  const animes = (
    await connection.execute(
      `
        SELECT * FROM ANIME
        WHERE ANIME_ID = :id
    `,
      {
        id: obj.id,
      },
      {
        outFormat: oracledb.OUT_FORMAT_OBJECT,
      }
    )
  ).rows;

  req.session.anime.banner = animes[0].BANNER_IMAGE;

  // genres
  const genres = (
    await connection.execute(
      `
        SELECT GENRE_NAME
        FROM ANIME A JOIN ANIME_GENRE AG ON A.ANIME_ID = AG.ANIME_ID JOIN GENRE G ON AG.GENRE_ID = G.GENRE_ID
        WHERE A.ANIME_ID = :id
    `,
      {
        id: obj.id,
      },
      {
        outFormat: oracledb.OUT_FORMAT_OBJECT,
      }
    )
  ).rows;

  // studios
  const studios = (
    await connection.execute(
      `
        SELECT A.*, S.*
        FROM ANIME A JOIN ANIME_STUDIO AST ON A.ANIME_ID = AST.ANIME_ID JOIN STUDIO S ON AST.STUDIO_ID = S.STUDIO_ID
        WHERE A.ANIME_ID = :id
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


  let isLiked = null;
  let preference = null;

  if (req.session.user) {
    const userdata = (
      await connection.execute(
        `
            SELECT * FROM USER_ANIME UA
            WHERE UA.USER_ID = :userid AND UA.ANIME_ID = :animeid
        `,
        { userid: req.session.user.USER_ID, animeid: obj.id },
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

  console.log(isLiked);

  let avgScore = (
    await connection.execute(
      `
        SELECT AVG(SCORE)
        FROM USER_ANIME UA 
        WHERE ANIME_ID = :animeid
    `,
      [obj.id]
    )
  ).rows[0][0];

  let userid = null;
  if (req.session.user) userid = req.session.user.USER_ID;

  let status = (
    await connection.execute(
      `
        SELECT UA.STATUS
        FROM ANIME A JOIN USER_ANIME UA ON A.ANIME_ID = UA.ANIME_ID
        WHERE UA.USER_ID = :userid AND A.ANIME_ID = :animeid
    `,
      [userid, obj.id]
    )
  ).rows;

  const activities = (await connection.execute(`
       SELECT *
        FROM USER_ANIME_ACTIVITY UAA JOIN USERR U ON UAA.USER_ID = U.USER_ID JOIN ANIME A ON UAA.ANIME_ID = A.ANIME_ID
        WHERE UAA.ANIME_ID = :animeid
        ORDER BY UAA.DATE_OF_CREATION DESC
  `, [obj.id], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows 

  await connection.close();

  if (req.session.user) {
    res.render("anime_individual_social", {
      anime: animes[0],
      genres,
      studios,
      isLiked,
      preference,
      avgScore,
      activities,
      status:
        status.length === 0 || status[0][0] === null
          ? "Add to List"
          : status[0][0],
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
}

const animeIndividualControllerPOST = async (req, res) => {
  console.log("in the animeIndividualControllerPOST");
  console.log(req.url, req.method);

  console.log(req.body); // testing purpose

  let animeid = Number(req.url.split("/")[2]);

  let animename = req.url.split("/")[3]

  console.log(animename)

  const connection = await connect();

  if (req.session.user) {
    let user = req.session.user;

    const userdata = (
      await connection.execute(
        `
            SELECT *
            FROM USER_ANIME UA
            WHERE UA.USER_ID = :userid AND UA.ANIME_ID = :animeid
        `,
        { userid: user.USER_ID, animeid },
        {
          outFormat: oracledb.OUT_FORMAT_OBJECT,
        }
      )
    ).rows;

    if (req.body.hasOwnProperty("like")) {
      if (userdata.length === 0) {
        await connection.execute(
          `
                    INSERT INTO USER_ANIME(USER_ID, ANIME_ID, IS_LIKED)
                    VALUES (:userid, :animeid, :isLiked)
                `,
          { userid: user.USER_ID, animeid, isLiked: "TRUE" },
          { autoCommit: true }
        );

        res.json({ isLiked: true });
      } else {
        if (userdata[0].IS_LIKED === "TRUE") {
          await connection.execute(
            `
                        UPDATE USER_ANIME
                        SET IS_LIKED = :isLiked
                        WHERE USER_ID = :userid AND ANIME_ID = :animeid
                    `,
            { isLiked: "FALSE", userid: user.USER_ID, animeid },
            { autoCommit: true }
          );

          res.json({ isLiked: false });
        } else {
          await connection.execute(
            `
                        UPDATE USER_ANIME
                        SET IS_LIKED = :isLiked
                        WHERE USER_ID = :userid AND ANIME_ID = :animeid
                    `,
            { isLiked: "TRUE", userid: user.USER_ID, animeid },
            { autoCommit: true }
          );

          res.json({ isLiked: true });
        }
      }
    } else {
      let status = req.body.mediaStatus.toUpperCase();
      let score =
        req.body.mediaScore === "" ? null : Number(req.body.mediaScore);
      let episodeProgress =
        req.body.mediaEpisodeProgress === ""
          ? null
          : Number(req.body.mediaEpisodeProgress);

      if (userdata.length === 0) {
        await connection.execute(
          `
                    INSERT INTO USER_ANIME(USER_ID, ANIME_ID, STATUS, SCORE, EPISODE_PROGRESS, IS_LIKED) VALUES (:userid, :animeid, :status, :score, :episodeProgress, :liked)
                `,
          {
            userid: user.USER_ID,
            animeid,
            status,
            score,
            episodeProgress,
            liked: "FALSE",
          },
          { autoCommit: true }
        );

        res.json({ done: true });
      } else {
        await connection.execute(
          `
                    UPDATE USER_ANIME
                    SET STATUS = :status, SCORE = :score, EPISODE_PROGRESS = :episodeProgress
                    WHERE USER_ID = :userid AND ANIME_ID = :animeid
                `,
          { status, score, episodeProgress, userid: user.USER_ID, animeid },
          { autoCommit: true }
        );

        res.json({ done: true });
      }
    }
  } else {
    res.json({ done: true });
  }
};

const animeIndividualReviewControllerGET = async (req, res) => {
  console.log("in the animeIndividualReviewControllerGET");
  console.log(req.url, req.method);

  if (req.session.user) {
    let anime = req.session.anime;

    const connection = await connect();

    let reviews = (
      await connection.execute(
        `
                SELECT A.*, RA.*, U.*, (
                        SELECT COUNT(*)
                        FROM USER_LIKES_REVIEW_ANIME URA
                        WHERE URA.REVIEW_ANIME_ID = RA.REVIEW_ANIME_ID 
                    ) AS LIKES 
                FROM ANIME A JOIN REVIEW_ANIME RA ON A.ANIME_ID = RA.ANIME_ID JOIN USERR U ON RA.USER_ID = U.USER_ID
                WHERE A.ANIME_ID = :id
                `,
        {
          id: anime.id,
        },
        {
          outFormat: oracledb.OUT_FORMAT_OBJECT,
        }
      )
    ).rows;

    await connection.close();

    res.render("reviews_anime", {
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

module.exports = {
  animeIndividualControllerGET,
  animeIndividualControllerPOST,
  animeIndividualReviewControllerGET,
  animeIndividualSocialControllerGET,
};
