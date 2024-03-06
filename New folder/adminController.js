const connect = require("./connect");
const oracledb = require("oracledb");

const adminControllerGET = async (req, res) => {
  console.log("in the adminControllerAddGET");
  console.log(req.url, req.method);

  if (req.session.user) {
    res.render("admin", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

const adminAddAnimeControllerGET = async (req, res) => {
  console.log("in the adminAddAnimeControllerGET");
  console.log(req.url, req.method);

  if (req.session.user) {
    res.render("admin_add", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

const adminAddAnimeControllerPOST = async (req, res) => {
  console.log("in the adminAddAnimeControllerPOST");
  console.log(req.url, req.method);
};

const adminAddMangaControllerGET = async (req, res) => {
  console.log("in the adminAddMangaControllerGET");
  console.log(req.url, req.method);

  if (req.session.user) {
    res.render("admin_add", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

const adminAddMangaControllerPOST = async (req, res) => {
  console.log("in the adminAddMangaControllerPOST");
  console.log(req.url, req.method);
};

const adminUpdateAnimeControllerGET = async (req, res) => {
  console.log("in the adminUpdateAnimeControllerGET");
  console.log(req.url, req.method);

  if(req.session.user && req.session.user.ROLE === "ADMIN") {
    res.render("admin_update_anime", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    })
  } else {
    res.redirect("/login")
  }
};

const adminUpdateAnimeControllerPOST = async (req, res) => {
  console.log("in the adminUpdateAnimeControllerPOST");
  console.log(req.url, req.method);

  if(req.session.user && req.session.user.ROLE === "ADMIN") {
    let title = req.body.title

    const connection = await connect()

    const animeTitles = (await connection.execute(`
      SELECT ENGLISH
      FROM ANIME A
      WHERE LOWER(A.ENGLISH) LIKE '%' || LOWER(:title) || '%'
    `, [title], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows

    res.json({
      animeTitles
    })

  } else {
    res.json({isAdmin: "You are not an admin"})
  }
};

const adminUpdateMangaControllerGET = async (req, res) => {
  console.log("in the adminUpdateMangaControllerGET");
  console.log(req.url, req.method);
};

const adminUpdateMangaControllerPOST = async (req, res) => {
  console.log("in the adminUpdateMangaControllerPOST");
  console.log(req.url, req.method);
};

const adminDeleteAnimeControllerGET = async (req, res) => {
  console.log("in the adminDeleteAnimeControllerGET");
  console.log(req.url, req.method);
};

const adminDeleteAnimeControllerPOST = async (req, res) => {
  console.log("in the adminDeleteAnimeControllerPOST");
  console.log(req.url, req.method);
};

const adminDeleteMangaControllerGET = async (req, res) => {
  console.log("in the adminDeleteMangaControllerGET");
  console.log(req.url, req.method);
};

const adminDeleteMangaControllerPOST = async (req, res) => {
  console.log("in the adminDeleteMangaControllerPOST");
  console.log(req.url, req.method);
};

const adminDatabaseLogControllerGET = async (req, res) => {
    console.log("in the adminDatabaseLogControllerGET");
    console.log(req.url, req.method);

    if (req.session.user && req.session.user.ROLE === "ADMIN") {
        const connection = await connect();

        const logs = (
            await connection.execute(
            `
                SELECT USERNAME, PARAMETER, EVENT_TYPE, TO_CHAR(DATE_OF_CREATION, 'YYYY-MM-DD HH24:MI:SS') AS DATE_OF_CREATION
                FROM DATABASE_LOG
                ORDER BY DATE_OF_CREATION
            `,
            [],
            { outFormat: oracledb.OUT_FORMAT_OBJECT }
            )
    ).rows;

    await connection.close();

    res.render("admin_databaseLog", {
        logs,
        isAdmin: true,
        userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
        username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

module.exports = {
  adminControllerGET,
  adminAddAnimeControllerGET,
  adminAddAnimeControllerPOST,
  adminAddMangaControllerGET,
  adminAddMangaControllerPOST,
  adminUpdateAnimeControllerGET,
  adminUpdateAnimeControllerPOST,
  adminUpdateMangaControllerGET,
  adminUpdateMangaControllerPOST,
  adminDeleteAnimeControllerGET,
  adminDeleteAnimeControllerPOST,
  adminDeleteMangaControllerGET,
  adminDeleteMangaControllerPOST,
  adminDatabaseLogControllerGET,
};
