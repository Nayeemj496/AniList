const connect = require("../controllers/connect")
const oracledb = require("oracledb")
const strftime = require("strftime")
const threadQuery = require("../queries/threadQuery")

const userProfileControllerGET = async (req, res) => {
  console.log("in the userProfileControllerGET");
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

  const staffs = (
    await connection.execute(
      `
        SELECT *
        FROM USER_LIKES_STAFF ULS JOIN STAFF S ON ULS.STAFF_ID = S.STAFF_ID
        WHERE ULS.USER_ID = :userid
    `,
      [userid],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;

  const voiceArtists = (
    await connection.execute(
      `
        SELECT *
        FROM USER_LIKES_VA ULV JOIN VOICE_ARTIST VA ON ULV.VA_ID = VA.VA_ID
        WHERE ULV.USER_ID = :userid
    `,
      [userid],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;

  // console.log(animes.length, mangas.length, characters.length, staffs.length);

  const animeActivities = (
    await connection.execute(
      `
            SELECT *
            FROM USER_ANIME_ACTIVITY UAA JOIN ANIME A ON UAA.ANIME_ID = A.ANIME_ID
            WHERE UAA.USER_ID = :userid
            ORDER BY UAA.DATE_OF_CREATION DESC
        `,
      [userid],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;



  for (let i = 0; i < animeActivities.length; ++i) {

    let time = new Date() - animeActivities[i].DATE_OF_CREATION;
    let timeString = "";

    let seconds = Math.floor(time / 1000);
    let minutes = Math.floor(seconds / 60);
    let hours = Math.floor(minutes / 60);
    let days = Math.floor(hours / 24);
    let months = Math.floor(days / 30);
    let years = Math.floor(months / 12);

    if (years) {
      if (years == 1) timeString += `${years} year ago`;
      else timeString += `${years} years ago`;
    } else if (months) {
      if (months == 1) timeString += `${months} month ago`;
      else timeString += `${months} months ago`;
    } else if (days) {
      if (days == 1) timeString += `${days} day ago`;
      else timeString += `${days} days ago`;
    } else if (hours) {
      if (hours == 1) timeString += `${hours} hour ago`;
      else timeString += `${hours} hours ago`;
    } else if (minutes) {
      if (minutes == 1) timeString += `${minutes} minute ago`;
      else timeString += `${minutes} minutes ago`;
    } else timeString += `${seconds} seconds ago`;

    animeActivities[i].time = timeString;
    animeActivities[i].type = "ANIME";

    animeActivities[i].STATUS =
    animeActivities[i].STATUS[0] +
    animeActivities[i].STATUS.substring(1).toLowerCase();
  }

  const mangaActivities = (
    await connection.execute(
      `
            SELECT *
            FROM USER_MANGA_ACTIVITY UMA JOIN MANGA M ON UMA.MANGA_ID = M.MANGA_ID
            WHERE UMA.USER_ID = :userid
            ORDER BY UMA.DATE_OF_CREATION DESC
        `,
      [userid],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;

  for (let i = 0; i < mangaActivities.length; ++i) {

    let time = new Date() - mangaActivities[i].DATE_OF_CREATION;
    let timeString = "";

    let seconds = Math.floor(time / 1000);
    let minutes = Math.floor(seconds / 60);
    let hours = Math.floor(minutes / 60);
    let days = Math.floor(hours / 24);
    let months = Math.floor(days / 30);
    let years = Math.floor(months / 12);

    if (years) {
      if (years == 1) timeString += `${years} year ago`;
      else timeString += `${years} years ago`;
    } else if (months) {
      if (months == 1) timeString += `${months} month ago`;
      else timeString += `${months} months ago`;
    } else if (days) {
      if (days == 1) timeString += `${days} day ago`;
      else timeString += `${days} days ago`;
    } else if (hours) {
      if (hours == 1) timeString += `${hours} hour ago`;
      else timeString += `${hours} hours ago`;
    } else if (minutes) {
      if (minutes == 1) timeString += `${minutes} minute ago`;
      else timeString += `${minutes} minutes ago`;
    } else timeString += `${seconds} seconds ago`;

    mangaActivities[i].time = timeString;
    mangaActivities[i].type = "MANGA"

    mangaActivities[i].STATUS =
    mangaActivities[i].STATUS[0] +
    mangaActivities[i].STATUS.substring(1).toLowerCase();
  }

  const activities = [...animeActivities, ...mangaActivities];

  activities.sort((a, b) => {
    return b.DATE_OF_CREATION - a.DATE_OF_CREATION;
  });

  await connection.close();

  console.log(req.session.user);

  if (req.session.user) {
    res.render("profile", {
      animes,
      mangas,
      characters,
      staffs,
      voiceArtists,
      activities,
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: user[0].USER_IMAGE || "/images/photos/user.png",
      userbannerimage: user[0].USER_BANNER_IMAGE,
      mainuserimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: user[0].USERNAME,
      mainusername: req.session.user.USERNAME,
      actionLength: action.length,
      dramaLength: drama.length,
      fantasyLength: fantasy.length,
      adventureLength: adventure.length,
    });
  } else {
    res.redirect("/login");
  }
};

const userAnimeListControllerGET = async (req, res) => {
  console.log("in the userAnimeListControllerGET");
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

  const watching = (
    await connection.execute(
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
    )
  ).rows;

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
        WHERE UA.USER_ID = :userid AND UA.STATUS = 'PLAN TO WATCH'
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
      userbannerimage: user[0].USER_BANNER_IMAGE,
      mainuserimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: user[0].USERNAME,
      mainusername: req.session.user.USERNAME,
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
        WHERE UM.USER_ID = :userid AND UM.STATUS = 'PLAN TO READ'
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
      userbannerimage: user[0].USER_BANNER_IMAGE,
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
  console.log("in the userHomeControllerGET");
  console.log(req.url, req.method);

  let userid = null;

  if (req.session.user) {
    userid = req.session.user.USER_ID;
  }

  const connection = await connect();

  const animeActivities = (
    await connection.execute(
      `
        SELECT *
        FROM USER_ANIME_ACTIVITY UAA JOIN USERR U ON UAA.USER_ID = U.USER_ID JOIN ANIME A ON UAA.ANIME_ID = A.ANIME_ID
        WHERE U.USER_ID = :userid
        ORDER BY UAA.DATE_OF_CREATION DESC
    `,
      [userid],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;

  for (let i = 0; i < animeActivities.length; ++i) {

    if(!animeActivities[i].USER_IMAGE) {
      animeActivities[i].USER_IMAGE = "/images/photos/user.png"
    }

    let time = new Date() - animeActivities[i].DATE_OF_CREATION;
    let timeString = "";

    let seconds = Math.floor(time / 1000);
    let minutes = Math.floor(seconds / 60);
    let hours = Math.floor(minutes / 60);
    let days = Math.floor(hours / 24);
    let months = Math.floor(days / 30);
    let years = Math.floor(months / 12);

    if (years) {
      if (years == 1) timeString += `${years} year ago`;
      else timeString += `${years} years ago`;
    } else if (months) {
      if (months == 1) timeString += `${months} month ago`;
      else timeString += `${months} months ago`;
    } else if (days) {
      if (days == 1) timeString += `${days} day ago`;
      else timeString += `${days} days ago`;
    } else if (hours) {
      if (hours == 1) timeString += `${hours} hour ago`;
      else timeString += `${hours} hours ago`;
    } else if (minutes) {
      if (minutes == 1) timeString += `${minutes} minute ago`;
      else timeString += `${minutes} minutes ago`;
    } else timeString += `${seconds} seconds ago`;

    animeActivities[i].time = timeString;
    animeActivities[i].type = "ANIME";

    animeActivities[i].STATUS =
    animeActivities[i].STATUS[0] +
    animeActivities[i].STATUS.substring(1).toLowerCase();
  }

  const mangaActivities = (
    await connection.execute(
      `
        SELECT *
        FROM USER_MANGA_ACTIVITY UMA JOIN USERR U ON UMA.USER_ID = U.USER_ID JOIN MANGA M ON UMA.MANGA_ID = M.MANGA_ID
        WHERE U.USER_ID = :userid
        ORDER BY UMA.DATE_OF_CREATION DESC
    `,
      [userid],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;

  for (let i = 0; i < mangaActivities.length; ++i) {

    if (!mangaActivities[i].USER_IMAGE) {
      mangaActivities[i].USER_IMAGE = "/images/photos/user.png";
    }

    let time = new Date() - mangaActivities[i].DATE_OF_CREATION;
    let timeString = "";

    let seconds = Math.floor(time / 1000);
    let minutes = Math.floor(seconds / 60);
    let hours = Math.floor(minutes / 60);
    let days = Math.floor(hours / 24);
    let months = Math.floor(days / 30);
    let years = Math.floor(months / 12);

    if (years) {
      if (years == 1) timeString += `${years} year ago`;
      else timeString += `${years} years ago`;
    } else if (months) {
      if (months == 1) timeString += `${months} month ago`;
      else timeString += `${months} months ago`;
    } else if (days) {
      if (days == 1) timeString += `${days} day ago`;
      else timeString += `${days} days ago`;
    } else if (hours) {
      if (hours == 1) timeString += `${hours} hour ago`;
      else timeString += `${hours} hours ago`;
    } else if (minutes) {
      if (minutes == 1) timeString += `${minutes} minute ago`;
      else timeString += `${minutes} minutes ago`;
    } else timeString += `${seconds} seconds ago`;

    mangaActivities[i].time = timeString;
    mangaActivities[i].type = "MANGA";

    mangaActivities[i].STATUS =
    mangaActivities[i].STATUS[0] +
    mangaActivities[i].STATUS.substring(1).toLowerCase();
  }

  const activities = [...animeActivities, ...mangaActivities];

  activities.sort((a, b) => {
    return b.DATE_OF_CREATION - a.DATE_OF_CREATION;
  });

  const watching = (
    await connection.execute(
      `
        SELECT *
        FROM USER_ANIME UA JOIN ANIME A ON UA.ANIME_ID = A.ANIME_ID
        WHERE UA.USER_ID = :userid AND UPPER(UA.STATUS) = 'WATCHING'
        ORDER BY A.ENGLISH
    `,
      [userid],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;

  const reading = (
    await connection.execute(
      `
        SELECT *
        FROM USER_MANGA UM JOIN MANGA M ON UM.MANGA_ID = M.MANGA_ID
        WHERE UM.USER_ID = :userid AND UPPER(UM.STATUS) = 'READING'
        ORDER BY M.ENGLISH
    `,
      [userid],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;

  const recentAnimeReviews = (
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
      [],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;

  const recentMangaReviews = (
    await connection.execute(
      ` SELECT M.*, RM.*, U.*, (
                        SELECT COUNT(*)
                        FROM USER_LIKES_REVIEW_MANGA URM
                        WHERE URM.REVIEW_MANGA_ID = RM.REVIEW_MANGA_ID 
                    ) AS LIKES 
                FROM MANGA M JOIN REVIEW_MANGA RM ON M.MANGA_ID = RM.MANGA_ID JOIN USERR U ON RM.USER_ID = U.USER_ID
                ORDER BY RM.DATE_OF_CREATION_MANGA DESC
    `,
      [],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;


  const newAnimes = (await connection.execute(`
        SELECT ANIME_ID, ENGLISH, COVER_IMAGE
        FROM ANIME A
        ORDER BY A.DATE_OF_CREATION DESC
  `, [], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows


  const newMangas = (
    await connection.execute(
      `
        SELECT MANGA_ID, ENGLISH, COVER_IMAGE
        FROM MANGA M
        ORDER BY M.DATE_OF_CREATION DESC
  `,
      [],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;

  const recentThreads = (
    await connection.execute(threadQuery.sqlRecentActiveThread, [], {
      outFormat: oracledb.OUT_FORMAT_OBJECT,
    })
  ).rows;

  console.log(recentThreads)

  await connection.close();

  if (req.session.user) {
    res.render("user_homepage", {
      recentThreads,
      activities,
      watching,
      reading,
      recentAnimeReviews,
      recentMangaReviews,
      newAnimes,
      newMangas,
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

const userSocialControllerGET = async (req, res) => {
  console.log("in the userSocialControllerGET")
  console.log(req.url, req.method)
  console.log(req.params)

  const connection = await connect();

  let username = req.params.name

  let userid = (await connection.execute(`
    SELECT USER_ID 
    FROM USERR U
    WHERE U.USERNAME = :username
  `, [username])).rows[0][0]

  const subscribedThreads = (
    await connection.execute(threadQuery.sqlSubscribedThread, [userid], {
      outFormat: oracledb.OUT_FORMAT_OBJECT,
    })
  ).rows;

  await connection.close();

  if (req.session.user) {
    res.render("forum_subscribed", {
      subscribedThreads,
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
}

const userSettingsControllerGET = async (req, res) => {
  console.log("in the userSettingsController");
  console.log(req.url, req.method);

  if (req.session.user) {
    res.render("user_settings", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

const userSettingsControllerPOST = async (req, res) => {
  console.log("in the userSettingsControllerPOST");
  console.log(req.url, req.method);

  console.log(req.body);

  let userid = null;

  if (req.session.user) userid = req.session.user.USER_ID;

  const connection = await connect();

  if (req.session.user) {
    if (req.body.Cover) {
      let cover = req.body.Cover;
      await connection.execute(
        `       BEGIN 
                  UPDATE_USER_IMAGE(:cover, :userid);
                END;
            `,
        [cover, userid],
        { autoCommit: true }
      );

      const io = req.io;

      let string = null;
      let parameter = `USER_IMAGE: ${cover}, USER_ID: ${userid}`;
      let event = `Procedure: UPDATE_USER_IMAGE(USER_IMAGE, USER_ID)`;

      const date = new Date();

      const formattedDate = strftime("%Y-%m-%d %H:%M:%S", date);

      string =
        req.session.user.USERNAME +
        "|" +
        parameter +
        "|" +
        event +
        "|" +
        formattedDate;
      console.log(string);

      await connection.execute(
        `
          INSERT INTO DATABASE_LOG(USERNAME, PARAMETER, EVENT_TYPE) VALUES
          (:username, :parameter, :event)
      `,
        [req.session.user.USERNAME, parameter, event],
        { autoCommit: true }
      );
      
      io.emit("adminLog", string);
    }
    if (req.body.Banner) {
      let banner = req.body.Banner;
      await connection.execute(
        `
                BEGIN
                  UPDATE_USER_BANNER_IMAGE(:banner, :userid);
                END;
            `,
        [banner, userid],
        { autoCommit: true }
      );

        const io = req.io;

        let string = null;
        let parameter = `USER_BANNER_IMAGE: ${banner}, USER_ID: ${userid}`;
        let event = `Procedure: UPDATE_USER_BANNER_IMAGE(USER_BANNER_IMAGE, USER_ID)`;

        const date = new Date();

        const formattedDate = strftime("%Y-%m-%d %H:%M:%S", date);

        string =
          req.session.user.USERNAME +
          "|" +
          parameter +
          "|" +
          event +
          "|" +
          formattedDate;
        console.log(string);

        await connection.execute(
          `
            INSERT INTO DATABASE_LOG(USERNAME, PARAMETER, EVENT_TYPE) VALUES
            (:username, :parameter, :event)
        `,
          [req.session.user.USERNAME, parameter, event],
          { autoCommit: true }
        );

        io.emit("adminLog", string);
    }
  }

  await connection.close();

  if (req.session.user) {
    if (req.body.Cover) {
      req.session.user.USER_IMAGE = req.body.Cover;
    }
    if (req.body.Banner) {
      req.session.user.USER_BANNER_IMAGE = req.body.Banner;
    }
    res.redirect("/home");
  } else {
    res.redirect("/login");
  }
};

module.exports = {
  userProfileControllerGET,
  userAnimeListControllerGET,
  userMangaListControllerGET,
  userHomeControllerGET,
  userSocialControllerGET,
  userSettingsControllerGET,
  userSettingsControllerPOST,
};
