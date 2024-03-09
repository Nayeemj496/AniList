const connect = require("./connect");
const oracledb = require("oracledb");
console.log(connect);

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
    res.render("admin_add_anime", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

const sqlforinsertinganime = `INSERT INTO ANIME (
    ANIME_ID, ROMAJI, ENGLISH, NATIVE, FORMAT, STATUS, DESCRIPTION,
    START_YEAR, START_MONTH, START_DAY, END_YEAR, END_MONTH, END_DAY,
    SEASON, SEASON_YEAR, EPISODES, DURATION, COUNTRY_OF_ORIGIN, SOURCE,
    COVER_IMAGE, COVER_IMAGE_COLOR, BANNER_IMAGE, ANIME_URL, MANGA_ID
) VALUES (
    :animeid, :romaji, :english, :native, :format, :status, :description,
    :startyear, :startmonth, :startday, :endyear, :endmonth, :endday,
    :season, :seasonyear, :episodes, :duration, :countryoforigin, :source,
    :coverimage, :coverimagecolor, :bannerimage, :animeurl, :mangaid
)`;

const sqlforinsertingmanga = `INSERT INTO MANGA (MANGA_ID,ROMAJI,ENGLISH,NATIVE,FORMAT,STATUS,DESCRIPTION,START_YEAR,START_MONTH,START_DAY,END_YEAR,END_MONTH,END_DAY,CHAPTERS,VOLUMES,COUNTRY_OF_ORIGIN,SOURCE,COVER_IMAGE,COVER_IMAGE_COLOR,BANNER_IMAGE,MANGA_URL) VALUES (:mangaid, :romaji, :english, :native, :format, :status, :description, :startyear, :startmonth, :startday, :endyear, :endmonth, :endday, :chapters, :volumes, :countryoforigin, :source, :coverimage, :coverimagecolor, :bannerimage, :mangaurl)`;

const sqlforinsertingcharacter = `INSERT INTO CHARACTER(CHARACTER_ID,FULL_NAME,NATIVE,IMAGE,MANGA_ID,VA_ID,ROLE,GENDER,AGE,DESCRIPTION) VALUES(:characterid, :fullname, :native, :image, :mangaid,:vaid,:role,:gender,:age,:description)`;
const sqlforinsertingva = `INSERT INTO VOICE_ARTIST(VA_ID,VA_IMAGE,DESCRIPTION,FULL_NAME,NATIVE,GENDER,DATE_OF_BIRTH_YEAR,DATE_OF_BIRTH_MONTH,DATE_OF_BIRTH_DAY,DATE_OF_DEATH_YEAR,DATE_OF_DEATH_MONTH,DATE_OF_DEATH_DAY,YEARS_ACTIVE_START,YEARS_ACTIVE_END,HOMETOWN) VALUES(:vaid,:vaimage,:description,:fullname,:native,:gender,:dobyear,:dobmonth,:dobday,:dodeathyear,:dodeathmonth,:dodeathday,:yearsactivestart,:yearsactiveend,:hometown)`;

const sqlforinsertingstaff = `
    INSERT INTO STAFF(STAFF_ID,FULL_NAME,NATIVE,IMAGE,DATE_OF_BIRTH_YEAR,DATE_OF_BIRTH_MONTH,DATE_OF_BIRTH_DAY,DATE_OF_DEATH_YEAR,DATE_OF_DEATH_MONTH,DATE_OF_DEATH_DAY,YEARS_ACTIVE_START,YEARS_ACTIVE_END,HOME_TOWN,ROLE,GENDER,DESCRIPTION)
    VALUES(:staffid,:fullname,:native,:image,:dobyear,:dobmonth,:dobday,:dodyear,:dodmonth,:dodday,:yearsactivestart,:yearsactiveend,:hometown,:role,:gender,:description)
`;

const adminAddAnimeControllerPOST = async (req, res) => {
  console.log("in the adminAddAnimeControllerPOST");
  console.log(req.url, req.method);
  if (req.session.user) {
    const connection = await connect();
    const existingAnime = await connection.execute(
      `SELECT * FROM ANIME WHERE ROMAJI = :romaji OR ENGLISH = :english`,
      {
        romaji: req.body.romaji,
        english: req.body.english,
      }
    );
    if (existingAnime.rows.length > 0) {
      res.redirect("/admin");
    } else {
      const maxanimeid = await connection.execute(
        `SELECT MAX(ANIME_ID) FROM ANIME`
      );

      const maxid = maxanimeid.rows[0][0];

      const startdatecmp = req.body.startdate.split("-");
      const enddatecmp = req.body.enddate.split("-");
      const startyear = parseInt(startdatecmp[0]);
      const startmonth = parseInt(startdatecmp[1]);
      const startday = parseInt(startdatecmp[2]);
      const endyear = parseInt(enddatecmp[0]);
      const endmonth = parseInt(enddatecmp[1]);
      const endday = parseInt(enddatecmp[2]);
      const episodes = parseInt(req.body.episodes);
      const duration = parseInt(req.body.duration);
      const seasonyear = parseInt(req.body.seasonyear);

      await connection.execute(sqlforinsertinganime, {
        animeid: maxid + 1,
        romaji: req.body.romaji,
        english: req.body.english,
        native: req.body.native,
        format: req.body.format,
        status: req.body.status,
        description: req.body.description,
        startyear: startyear,
        startmonth: startmonth,
        startday: startday,
        endyear: isNaN(endyear) ? null : endyear,
        endmonth: isNaN(endmonth) ? null : endmonth,
        endday: isNaN(endday) ? null : endday,
        season: req.body.season,
        seasonyear: req.body.seasonyear,
        episodes: req.body.episodes,
        duration: req.body.duration,
        countryoforigin: req.body.origin,
        source: req.body.source,
        coverimage: req.body.coverimage,
        coverimagecolor: req.body.coverimagecolor,
        bannerimage: req.body.bannerimage,
        animeurl: req.body.animeurl,
        mangaid: null,
      });
      await connection.commit();
      res.redirect("/admin");
    }
  } else {
    res.redirect("/login");
  }
};

const adminAddMangaControllerGET = async (req, res) => {
  console.log("in the adminAddMangaControllerGET");
  console.log(req.url, req.method);

  if (req.session.user) {
    res.render("admin_add_manga", {
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
  if (req.session.user) {
    const connection = await connect();
    const existingManga = await connection.execute(
      `SELECT * FROM MANGA WHERE ROMAJI = :romaji OR ENGLISH = :english`,
      {
        romaji: req.body.romaji,
        english: req.body.english,
      }
    );
    if (existingManga.rows.length > 0) {
      res.redirect("/admin");
    } else {
      const maxmangaid = await connection.execute(
        `SELECT MAX(MANGA_ID) FROM MANGA`
      );

      const maxid = maxmangaid.rows[0][0];

      const startdatecmp = req.body.startdate.split("-");
      const enddatecmp = req.body.enddate.split("-");
      const startyear = parseInt(startdatecmp[0]);
      const startmonth = parseInt(startdatecmp[1]);
      const startday = parseInt(startdatecmp[2]);
      const endyear = parseInt(enddatecmp[0]);
      const endmonth = parseInt(enddatecmp[1]);
      const endday = parseInt(enddatecmp[2]);

      await connection.execute(sqlforinsertingmanga, {
        mangaid: maxid + 1,
        romaji: req.body.romaji,
        english: req.body.english,
        native: req.body.native,
        format: req.body.format,
        status: req.body.status,
        description: req.body.description,
        startyear: startyear,
        startmonth: startmonth,
        startday: startday,
        endyear: isNaN(endyear) ? null : endyear,
        endmonth: isNaN(endmonth) ? null : endmonth,
        endday: isNaN(endday) ? null : endday,
        chapters: req.body.chapters,
        volumes: req.body.volumes,
        countryoforigin: req.body.origin,
        source: req.body.source,
        coverimage: req.body.coverimage,
        coverimagecolor: req.body.coverimagecolor,
        bannerimage: req.body.bannerimage,
        mangaurl: req.body.mangaurl,
      });
      await connection.commit();
      res.redirect("/admin");
    }
  } else {
    res.redirect("/login");
  }
};

const adminUpdateAnimeControllerGET = async (req, res) => {
  console.log("in the adminUpdateAnimeControllerGET");
  console.log(req.url, req.method);

  if (req.session.user && req.session.user.ROLE === "ADMIN") {
    res.render("admin_update_anime", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

const adminUpdateAnimeControllerPOST = async (req, res) => {
  console.log("in the adminUpdateAnimeControllerPOST");
  console.log(req.url, req.method);

  if (req.session.user && req.session.user.ROLE === "ADMIN") {
    const obj = req.body;

    const connection = await connect();

    if (obj.hasOwnProperty("update")) {
      let title = obj.title;

      const animeTitles = (
        await connection.execute(
          `SELECT ENGLISH
              FROM ANIME A
              WHERE LOWER(A.ENGLISH) LIKE '%' || LOWER(:title) || '%'
            `,
          [title],
          { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
      ).rows;

      res.json({
        animeTitles,
      });
    } else {
      console.log("in the update section code here");
      const utitle = obj.selectAnime;
      console.log(utitle);
      if (obj.english !== "") {
        await connection.execute(
          `UPDATE ANIME
                SET ENGLISH = :english
                WHERE ENGLISH = :utitle`,
          [obj.english, utitle]
        );
      }
      if (obj.romaji !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET ROMAJI = :romaji
                    WHERE ENGLISH = :utitle`,
          [obj.romaji, utitle]
        );
      }
      if (obj.native !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET NATIVE = :native
                    WHERE ENGLISH = :utitle`,
          [obj.native, utitle]
        );
      }
      if (obj.format !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET FORMAT = :format
                    WHERE ENGLISH = :utitle`,
          [obj.format, utitle]
        );
      }
      if (obj.status !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET STATUS = :status
                    WHERE ENGLISH = :utitle`,
          [obj.status, utitle]
        );
      }
      if (obj.description !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET DESCRIPTION = :description
                    WHERE ENGLISH = :utitle`,
          [obj.description, utitle]
        );
      }
      if (obj.startdate !== "") {
        const startdatecmp = req.body.startdate.split("-");
        const startyear = parseInt(startdatecmp[0]);
        const startmonth = parseInt(startdatecmp[1]);
        const startday = parseInt(startdatecmp[2]);
        await connection.execute(
          `UPDATE ANIME
                    SET START_YEAR = :startyear, START_MONTH = :startmonth, START_DAY = :startday
                    WHERE ENGLISH = :utitle`,
          [startyear, startmonth, startday, utitle]
        );
      }
      if (obj.enddate !== "") {
        const enddatecmp = req.body.enddate.split("-");
        const endyear = parseInt(enddatecmp[0]);
        const endmonth = parseInt(enddatecmp[1]);
        const endday = parseInt(enddatecmp[2]);
        await connection.execute(
          `UPDATE ANIME
                    SET END_YEAR = :endyear, END_MONTH = :endmonth, END_DAY = :endday
                    WHERE ENGLISH = :utitle`,
          [endyear, endmonth, endday, utitle]
        );
      }
      if (obj.season !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET SEASON = :season
                    WHERE ENGLISH = :utitle`,
          [obj.season, utitle]
        );
      }
      if (obj.seasonyear !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET SEASON_YEAR = :seasonyear
                    WHERE ENGLISH = :utitle`,
          [obj.seasonyear, utitle]
        );
      }
      if (obj.episodes !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET EPISODES = :episodes
                    WHERE ENGLISH = :utitle`,
          [obj.episodes, utitle]
        );
      }
      if (obj.duration !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET DURATION = :duration
                    WHERE ENGLISH = :utitle`,
          [obj.duration, utitle]
        );
      }
      if (obj.origin !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET COUNTRY_OF_ORIGIN = :origin
                    WHERE ENGLISH = :utitle`,
          [obj.origin, utitle]
        );
      }
      if (obj.source !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET SOURCE = :source
                    WHERE ENGLISH = :utitle`,
          [obj.source, utitle]
        );
      }
      if (obj.coverimage !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET COVER_IMAGE = :coverimage
                    WHERE ENGLISH = :utitle`,
          [obj.coverimage, utitle]
        );
      }
      if (obj.coverimagecolor !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET COVER_IMAGE_COLOR = :coverimagecolor
                    WHERE ENGLISH = :utitle`,
          [obj.coverimagecolor, utitle]
        );
      }
      if (obj.bannerimage !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET BANNER_IMAGE = :bannerimage
                    WHERE ENGLISH = :utitle`,
          [obj.bannerimage, utitle]
        );
      }
      if (obj.animeurl !== "") {
        await connection.execute(
          `UPDATE ANIME
                    SET ANIME_URL = :animeurl
                    WHERE ENGLISH = :utitle`,
          [obj.animeurl, utitle]
        );
      }

      await connection.commit();
      await connection.close();
      res.redirect("/admin");
      console.log(obj);
    }
  } else {
    res.json({ isAdmin: "You are not an admin" });
  }
};

const adminUpdateAnimeCharacterControllerGET = async (req, res) => {
  console.log("in the adminUpdateAnimeCharacterControllerGET");
  console.log(req.url, req.method);
  if (req.session.user) {
    res.render("admin_add_character", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

const adminUpdateAnimeCharacterControllerPOST = async (req, res) => {
  console.log("in the adminUpdateAnimeCharacterControllerPOST");
  console.log(req.url, req.method);
  if (req.session.user) {
    const connection = await connect();
    const existingcharacter = await connection.execute(
      `SELECT * FROM CHARACTER WHERE FULL_NAME = :fullname`,
      {
        fullname: req.body.fullname,
      }
    );
    if (existingcharacter.rows.length > 0) {
      const idgot = existingcharacter.rows[0][0];
      const alreadyentry = await connection.execute(
        `SELECT * FROM HAS WHERE CHARACTER_ID = :charid`,
        {
          charid: idgot,
        }
      );
      if (alreadyentry.rows.length > 0) {
        res.redirect("/admin");
      } else {
        const searchanime = await connection.execute(
          `SELECT ANIME_ID FROM ANIME WHERE ENGLISH = :english`,
          {
            english: req.body.animename,
          }
        );
        const animeid = searchanime.rows[0][0];
        await connection.execute(
          `INSERT INTO HAS(ANIME_ID,CHARACTER_ID) VALUES(:animeid,:charid)`,
          {
            animeid: animeid,
            charid: idgot,
          }
        );
        await connection.commit();
        await connection.close();
        res.redirect("/admin");
      }
    } else {
      const maxcharid = await connection.execute(
        `SELECT MAX(CHARACTER_ID) FROM CHARACTER`
      );
      const maxid = maxcharid.rows[0][0];
      await connection.execute(sqlforinsertingcharacter, {
        characterid: maxid + 1,
        fullname: req.body.fullname,
        native: req.body.native,
        image: req.body.image,
        mangaid: req.body.mangaid,
        vaid: null,
        role: req.body.role,
        gender: req.body.gender,
        age: req.body.age,
        description: req.body.description,
      });
      const searchanime = await connection.execute(
        `
                 SELECT ANIME_ID
                 FROM ANIME
                 WHERE MANGA_ID = :mangaid
            `,
        {
          mangaid: req.body.mangaid,
        }
      );
      const animeid = searchanime.rows[0][0];
      await connection.execute(
        `
                 INSERT INTO HAS(ANIME_ID,CHARACTER_ID)
                    VALUES(:animeid,:characterid)
                
                `,
        {
          animeid: animeid,
          characterid: maxid + 1,
        }
      );
      await connection.commit();
      await connection.close();
      res.redirect("/admin");
    }
  } else {
    res.redirect("/login");
  }
};
const adminUpdateAnimeCharacterVAControllerGET = async (req, res) => {
  console.log("in the adminUpdateAnimeCharacterVAControllerGET");
  console.log(req.url, req.method);
  if (req.session.user) {
    res.render("admin_add_va", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};
const adminUpdateAnimeCharacterVAControllerPOST = async (req, res) => {
  console.log("in the adminUpdateAnimeCharacterVAControllerPOST");
  console.log(req.url, req.method);
  if (req.session.user) {
    const connection = await connect();
    const existingva = await connection.execute(
      `SELECT * FROM VOICE_ARTIST WHERE FULL_NAME = :fullname`,
      {
        fullname: req.body.fullname,
      }
    );
    if (existingva.rows.length > 0) {
      const searchva = await connection.execute(
        `
                SELECT VA_ID
                FROM VOICE_ARTIST
                WHERE FULL_NAME = :fullname
            `,
        {
          fullname: req.body.fullname,
        }
      );
      const vaid = searchva.rows[0][0];
      const searchchar = await connection.execute(
        `
                SELECT CHARACTER_ID
                FROM CHARACTER
                WHERE FULL_NAME = :fullname
                `,
        {
          fullname: req.body.character,
        }
      );
      const charid = searchchar.rows[0][0];
      await connection.execute(
        `
                UPDATE CHARACTER
                SET VA_ID = :vaid
                WHERE CHARACTER_ID = :charid
            `,
        {
          vaid: vaid,
          charid: charid,
        }
      );
    } else {
      const maxvaid = await connection.execute(`SELECT MAX(VA_ID) FROM VA`);
      const maxid = maxvaid.rows[0][0];
      const dobcmp = req.body.birthdate.split("-");
      const dobyear = parseInt(dobcmp[0]);
      const dobmonth = parseInt(dobcmp[1]);
      const dobday = parseInt(dobcmp[2]);
      const dodcmp = req.body.deathdate.split("-");
      const dodyear = parseInt(dodcmp[0]);
      const dodmonth = parseInt(dodcmp[1]);
      const doday = parseInt(dodcmp[2]);
      await connection.execute(sqlforinsertingva, {
        vaid: maxid + 1,
        vaimage: req.body.vaimage,
        description: req.body.description,
        fullname: req.body.fullname,
        native: req.body.native,
        gender: req.body.gender,
        dobyear: dobyear,
        dobmonth: dobmonth,
        dobday: dobday,
        dodyear: dodyear,
        dodmonth: dodmonth,
        doday: doday,
        yearsactivestart: req.body.yearsactivestart,
        yearsactiveend: req.body.yearsactiveend,
        hometown: req.body.hometown,
      });
      const searchva = await connection.execute(
        `
                SELECT VA_ID
                FROM VOICE_ARTIST
                WHERE FULL_NAME = :fullname
            `,
        {
          fullname: req.body.fullname,
        }
      );
      const vaid = searchva.rows[0][0];
      const searchchar = await connection.execute(
        `
                SELECT CHARACTER_ID
                FROM CHARACTER
                WHERE FULL_NAME = :fullname
                `,
        {
          fullname: req.body.character,
        }
      );
      const charid = searchchar.rows[0][0];
      await connection.execute(
        `
                UPDATE CHARACTER
                SET VA_ID = :vaid
                WHERE CHARACTER_ID = :charid
            `,
        {
          vaid: vaid,
          charid: charid,
        }
      );
    }
    await connection.commit();
    await connection.close();
    res.redirect("/admin");
  }
};

const adminUpdateAnimeStaffControllerGET = async (req, res) => {
  console.log("in the adminUpdateAnimeStaffControllerGET");
  console.log(req.url, req.method);
  if (req.session.user) {
    res.render("admin_add_staff", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

const adminUpdateAnimeStaffControllerPOST = async (req, res) => {
  console.log("in the adminUpdateAnimeStaffControllerPOST");
  console.log(req.url, req.method);
  if (req.session.user) {
    const connection = await connect();
    const existingstaff = await connection.execute(
      `SELECT * FROM STAFF WHERE FULL_NAME = :fullname`,
      {
        fullname: req.body.fullname,
      }
    );
    if (existingstaff.rows.length > 0) {
      const dbanimeid = await connection.execute(
        `SELECT ANIME_ID FROM ANIME WHERE ENGLISH = :english`,
        {
          english: req.body.animename,
        }
      );
      const animeid = dbanimeid.rows[0][0];
      await connection.execute(
        `INSERT INTO ANIME_STAFF(ANIME_ID,STAFF_ID) VALUES(:animeid,:staffid)`,
        {
          animeid: animeid,
          staffid: existingstaff.rows[0][0],
        }
      );

      res.redirect("/admin");
    } else {
      const maxstaffid = await connection.execute(`
                SELECT MAX(STAFF_ID)
                FROM STAFF
            `);
      const maxid = maxstaffid.rows[0][0];
      const dobcmp = req.body.birthdate.split("-");
      const dobyear = parseInt(dobcmp[0]);
      const dobmonth = parseInt(dobcmp[1]);
      const dobday = parseInt(dobcmp[2]);
      const dodcmp = req.body.deathdate.split("-");
      const dodyear = parseInt(dodcmp[0]);
      const dodmonth = parseInt(dodcmp[1]);
      const doday = parseInt(dodcmp[2]);
      await connection.execute(sqlforinsertingstaff, {
        staffid: maxid + 1,
        fullname: req.body.fullname,
        native: req.body.native,
        image: req.body.image,
        dobyear: isNaN(dobyear) ? null : dobyear,
        dobmonth: isNaN(dobmonth) ? null : dobmonth,
        dobday: isNaN(dobday) ? null : dobday,
        dodyear: isNaN(dodyear) ? null : dodyear,
        dodmonth: isNaN(dodmonth) ? null : dodmonth,
        dodday: isNaN(doday) ? null : doday,
        yearsactivestart: isNaN(req.body.yearsactivestart)
          ? null
          : req.body.yearsactivestart,
        yearsactiveend: isNaN(req.body.yearsactiveend)
          ? null
          : req.body.yearsactiveend,
        hometown: req.body.hometown,
        role: req.body.role,
        gender: req.body.gender,
        description: req.body.description,
      });
      const dbanimeid = await connection.execute(
        `SELECT ANIME_ID FROM ANIME WHERE ENGLISH = :english`,
        {
          english: req.body.animename,
        }
      );
      const animeid = dbanimeid.rows[0][0];
      await connection.execute(
        `INSERT INTO ANIME_STAFF(ANIME_ID,STAFF_ID) VALUES(:animeid,:staffid)`,
        {
          animeid: animeid,
          staffid: maxid + 1,
        }
      );
      //studio part
      // const studioname = req.body.studio
      // const searchstudio = await connection.execute(`SELECT STUDIO_ID FROM STUDIO WHERE STUDIO_NAME = :studioname`,{
      //     studioname: studioname
      // })
      // if(searchstudio.rows.length > 0){
      //     const animeid = await connection.execute(`SELECT ANIME_ID FROM ANIME WHERE ENGLISH = :english`,{
      //         english: req.body.animename
      //     })
      //     await connection.execute(`INSERT INTO ANIME_STUDIO(ANIME_ID,STUDIO_ID) VALUES(:animeid,:studioid)`,{
      //         animeid: animeid.rows[0][0],
      //         studioid: searchstudio.rows[0][0]
      //     })

      // }
      // else{
      //     const dbstudioid = await connection.execute(`SELECT MAX(STUDIO_ID) FROM STUDIO`)
      //     const studioid = dbstudioid.rows[0][0]
      //     await connection.execute(`INSERT INTO STUDIO(STUDIO_ID,STUDIO_NAME) VALUES(:studioid,:studioname)`,{
      //         studioid: studioid+1,
      //         studioname: studioname
      //     })
      //     const animeid = await connection.execute(`SELECT ANIME_ID FROM ANIME WHERE ENGLISH = :english`,{
      //         english: req.body.animename
      //     })
      //     await connection.execute(`INSERT INTO ANIME_STUDIO(ANIME_ID,STUDIO_ID) VALUES(:animeid,:studioid)`,{
      //         animeid: animeid.rows[0][0],
      //         studioid: studioid+1
      //     })

      // }
      // //producer part
      // const producerarray = new Array()
      // if(req.body.producer !== ''){
      //     producerarray.push(req.body.producer1)
      // }
      // if(req.body.producer2 !== ''){
      //     producerarray.push(req.body.producer2)
      // }
      // if(req.body.producer3 !== ''){
      //     producerarray.push(req.body.producer3)
      // }
      // if(req.body.producer4 !== ''){
      //     producerarray.push(req.body.producer4)
      // }
      // for(let i=0;i<producerarray.length;i++){
      //     const searchprod = await connection.execute(`
      //         SELECT PRODUCER_ID
      //         FROM PRODUCER
      //         WHERE PRODUCER_NAME = :fullname
      //     `,
      //     {
      //         fullname: producerarray[i]
      //     }
      //     )
      //     if(searchprod.rows.length > 0){
      //         const animeid = await connection.execute(`SELECT ANIME_ID FROM ANIME WHERE ENGLISH = :english`,{
      //             english: req.body.animename
      //         })
      //         await connection.execute(`INSERT INTO ANIME_PRODUCER(ANIME_ID,PRODUCER_ID) VALUES(:animeid,:prodid)`,{
      //             animeid: animeid.rows[0][0],
      //             prodid: searchprod.rows[0][0]
      //         })

      //     }
      //     else{
      //         const dbprodid = await connection.execute(`
      //             SELECT MAX(PRODUCER_ID)
      //             FROM PRODUCER
      //         `)
      //         const prodid = dbprodid.rows[0][0]
      //         await connection.execute(`INSERT INTO PRODUCER(PRODUCER_ID,PRODUCER_NAME) VALUES(:prodid,:producername)`,
      //         {
      //             prodid: prodid+1,
      //             producername: producerarray[i]
      //         })
      //         const animeid = await connection.execute(`SELECT ANIME_ID FROM ANIME WHERE ENGLISH = :english`,{
      //             english: req.body.animename
      //         })
      //         await connection.execute(`INSERT INTO ANIME_PRODUCER(ANIME_ID,PRODUCER_ID) VALUES(:animeid,:prodid)`,{
      //             animeid: animeid.rows[0][0],
      //             prodid: prodid+1
      //         })
      //     }

      // }
      await connection.commit();
      await connection.close();
      res.redirect("/admin");
    }
  } else {
    res.redirect("/login");
  }
};

const adminUpdateAnimeStaffStudioProducerControllerGET = async (req, res) => {
  console.log("in the adminUpdateAnimeStaffStudioProducerControllerGET");
  console.log(req.url, req.method);
  if (req.session.user) {
    res.render("admin_add_studio_producer", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

const adminUpdateAnimeStaffStudioProducerControllerPOST = async (req, res) => {
  console.log("in the adminUpdateAnimeStaffStudioProducerControllerPOST");
  console.log(req.url, req.method);
  if (req.session.user) {
    const connection = await connect();
    const existingstudio = await connection.execute(
      `SELECT * FROM STUDIO WHERE STUDIO_NAME = :studioname`,
      {
        studioname: req.body.studio,
      }
    );
    if (existingstudio.rows.length > 0) {
      const dbanimeid = await connection.execute(
        `SELECT ANIME_ID FROM ANIME WHERE ENGLISH = :english`,
        {
          english: req.body.animename,
        }
      );
      const animeid = dbanimeid.rows[0][0];
      await connection.execute(
        `INSERT INTO ANIME_STUDIO(ANIME_ID,STUDIO_ID) VALUES(:animeid,:studioid)`,
        {
          animeid: animeid,
          studioid: existingstudio.rows[0][0],
        }
      );
      const producerarray = new Array();
      if (req.body.producer !== "") {
        producerarray.push(req.body.producer1);
      }
      if (req.body.producer2 !== "") {
        producerarray.push(req.body.producer2);
      }
      if (req.body.producer3 !== "") {
        producerarray.push(req.body.producer3);
      }
      if (req.body.producer4 !== "") {
        producerarray.push(req.body.producer4);
      }
      for (let i = 0; i < producerarray.length; i++) {
        const searchprod = await connection.execute(
          `
                    SELECT PRODUCER_ID
                    FROM PRODUCER
                    WHERE PRODUCER_NAME = :fullname
                `,
          {
            fullname: producerarray[i],
          }
        );
        if (searchprod.rows.length > 0) {
          const animeid = await connection.execute(
            `SELECT ANIME_ID FROM ANIME WHERE ENGLISH = :english`,
            {
              english: req.body.animename,
            }
          );
          await connection.execute(
            `INSERT INTO ANIME_PRODUCER(ANIME_ID,PRODUCER_ID) VALUES(:animeid,:prodid)`,
            {
              animeid: animeid.rows[0][0],
              prodid: searchprod.rows[0][0],
            }
          );
        } else {
          const dbprodid = await connection.execute(`
                        SELECT MAX(PRODUCER_ID)
                        FROM PRODUCER
                    `);
          const prodid = dbprodid.rows[0][0];
          await connection.execute(
            `INSERT INTO PRODUCER(PRODUCER_ID,PRODUCER_NAME) VALUES(:prodid,:producername)`,
            {
              prodid: prodid + 1,
              producername: producerarray[i],
            }
          );
          const animeid = await connection.execute(
            `SELECT ANIME_ID FROM ANIME WHERE ENGLISH = :english`,
            {
              english: req.body.animename,
            }
          );
          await connection.execute(
            `INSERT INTO ANIME_PRODUCER(ANIME_ID,PRODUCER_ID) VALUES(:animeid,:prodid)`,
            {
              animeid: animeid.rows[0][0],
              prodid: prodid + 1,
            }
          );
        }
      }
    } else {
      const dbstudioid = await connection.execute(
        `SELECT MAX(STUDIO_ID) FROM STUDIO`
      );
      const studioid = dbstudioid.rows[0][0];
      await connection.execute(
        `INSERT INTO STUDIO(STUDIO_ID,STUDIO_NAME) VALUES(:studioid,:studioname)`,
        {
          studioid: studioid + 1,
          studioname: req.body.studio,
        }
      );
      const dbanimeid = await connection.execute(
        `SELECT ANIME_ID FROM ANIME WHERE ENGLISH = :english`,
        {
          english: req.body.animename,
        }
      );
      const animeid = dbanimeid.rows[0][0];
      await connection.execute(
        `INSERT INTO ANIME_STUDIO(ANIME_ID,STUDIO_ID) VALUES(:animeid,:studioid)`,
        {
          animeid: animeid,
          studioid: studioid + 1,
        }
      );

      const producerarray = new Array();
      if (req.body.producer !== "") {
        producerarray.push(req.body.producer1);
      }
      if (req.body.producer2 !== "") {
        producerarray.push(req.body.producer2);
      }
      if (req.body.producer3 !== "") {
        producerarray.push(req.body.producer3);
      }
      if (req.body.producer4 !== "") {
        producerarray.push(req.body.producer4);
      }
      for (let i = 0; i < producerarray.length; i++) {
        const searchprod = await connection.execute(
          `
                    SELECT PRODUCER_ID
                    FROM PRODUCER
                    WHERE PRODUCER_NAME = :fullname
                `,
          {
            fullname: producerarray[i],
          }
        );
        if (searchprod.rows.length > 0) {
          const animeid = await connection.execute(
            `SELECT ANIME_ID FROM ANIME WHERE ENGLISH = :english`,
            {
              english: req.body.animename,
            }
          );
          await connection.execute(
            `INSERT INTO ANIME_PRODUCER(ANIME_ID,PRODUCER_ID) VALUES(:animeid,:prodid)`,
            {
              animeid: animeid.rows[0][0],
              prodid: searchprod.rows[0][0],
            }
          );
        } else {
          const dbprodid = await connection.execute(`
                        SELECT MAX(PRODUCER_ID)
                        FROM PRODUCER
                    `);
          const prodid = dbprodid.rows[0][0];
          await connection.execute(
            `INSERT INTO PRODUCER(PRODUCER_ID,PRODUCER_NAME) VALUES(:prodid,:producername)`,
            {
              prodid: prodid + 1,
              producername: producerarray[i],
            }
          );
          const animeid = await connection.execute(
            `SELECT ANIME_ID FROM ANIME WHERE ENGLISH = :english`,
            {
              english: req.body.animename,
            }
          );
          await connection.execute(
            `INSERT INTO ANIME_PRODUCER(ANIME_ID,PRODUCER_ID) VALUES(:animeid,:prodid)`,
            {
              animeid: animeid.rows[0][0],
              prodid: prodid + 1,
            }
          );
        }
      }
    }
    await connection.commit();
    await connection.close();
    res.redirect("/admin");
  } else {
    res.redirect("/login");
  }
};

const adminUpdateMangaControllerGET = async (req, res) => {
  console.log("in the adminUpdateMangaControllerGET");
  console.log(req.url, req.method);
  if (req.session.user) {
    res.render("admin_update_manga", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

const adminUpdateMangaControllerPOST = async (req, res) => {
  console.log("in the adminUpdateMangaControllerPOST");
  console.log(req.url, req.method);
  if (req.session.user && req.session.user.ROLE === "ADMIN") {
    const obj = req.body;

    const connection = await connect();

    if (obj.hasOwnProperty("update")) {
      let title = obj.title;

      const mangaTitles = (
        await connection.execute(
          `SELECT ENGLISH
            FROM MANGA A
            WHERE LOWER(A.ENGLISH) LIKE '%' || LOWER(:title) || '%'
          `,
          [title],
          { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
      ).rows;

      res.json({
        mangaTitles,
      });
    } else {
      console.log("in the update section code here");
      const utitle = obj.selectManga;
      console.log(utitle);
      if (obj.english !== "") {
        console.log("in english section");
        await connection.execute(
          `UPDATE MANGA
              SET ENGLISH = :english
              WHERE ENGLISH = :utitle`,
          [obj.english, utitle]
        );
      }
      if (obj.romaji !== "") {
        await connection.execute(
          `UPDATE MANGA
                  SET ROMAJI = :romaji
                  WHERE ENGLISH = :utitle`,
          [obj.romaji, utitle]
        );
      }
      if (obj.native !== null) {
        await connection.execute(
          `UPDATE MANGA
                  SET NATIVE = :native
                  WHERE ENGLISH = :utitle`,
          [obj.native, utitle]
        );
      }
      if (obj.format !== "") {
        await connection.execute(
          `UPDATE MANGA
                  SET FORMAT = :format
                  WHERE ENGLISH = :utitle`,
          [obj.format, utitle]
        );
      }
      if (obj.status !== "") {
        await connection.execute(
          `UPDATE MANGA
                  SET STATUS = :status
                  WHERE ENGLISH = :utitle`,
          [obj.status, utitle]
        );
      }
      if (obj.description !== "") {
        await connection.execute(
          `UPDATE MANGA
                  SET DESCRIPTION = :description
                  WHERE ENGLISH = :utitle`,
          [obj.description, utitle]
        );
      }
      if (obj.startdate !== "") {
        const startdatecmp = obj.startdate.split("-");
        if (startdatecmp.length >= 3) {
          const startyear = parseInt(startdatecmp[0]);
          const startmonth = parseInt(startdatecmp[1]);
          const startday = parseInt(startdatecmp[2]);
          await connection.execute(
            `UPDATE MANGA
                  SET START_YEAR = :startyear, START_MONTH = :startmonth, START_DAY = :startday
                  WHERE ENGLISH = :utitle`,
            [startyear, startmonth, startday, utitle]
          );
        }
      }
      if (obj.enddate !== "") {
        const enddatecmp = obj.enddate.split("-");
        if (enddatecmp.length >= 3) {
          const endyear = parseInt(enddatecmp[0]);
          const endmonth = parseInt(enddatecmp[1]);
          const endday = parseInt(enddatecmp[2]);
          await connection.execute(
            `UPDATE MANGA
                  SET END_YEAR = :endyear, END_MONTH = :endmonth, END_DAY = :endday
                  WHERE ENGLISH = :utitle`,
            [endyear, endmonth, endday, utitle]
          );
        }
      }
      if (obj.chapters !== "") {
        await connection.execute(
          `UPDATE MANGA
                    SET CHAPTERS = :chapters
                    WHERE ENGLISH = :utitle`,
          [obj.chapters, utitle]
        );
      }
      if (obj.volumes !== "") {
        await connection.execute(
          `UPDATE MANGA
                    SET VOLUMES = :volumes
                    WHERE ENGLISH = :utitle`,
          [obj.volumes, utitle]
        );
      }
      if (obj.origin !== "") {
        await connection.execute(
          `UPDATE MANGA
                  SET COUNTRY_OF_ORIGIN = :origin
                  WHERE ENGLISH = :utitle`,
          [obj.origin, utitle]
        );
      }
      if (obj.source !== "") {
        await connection.execute(
          `UPDATE MANGA
                  SET SOURCE = :source
                  WHERE ENGLISH = :utitle`,
          [obj.source, utitle]
        );
      }
      if (obj.coverimage !== "") {
        await connection.execute(
          `UPDATE MANGA
                  SET COVER_IMAGE = :coverimage
                  WHERE ENGLISH = :utitle`,
          [obj.coverimage, utitle]
        );
      }
      if (obj.coverimagecolor !== "") {
        await connection.execute(
          `UPDATE MANGA
                  SET COVER_IMAGE_COLOR = :coverimagecolor
                  WHERE ENGLISH = :utitle`,
          [obj.coverimagecolor, utitle]
        );
      }
      if (obj.bannerimage !== "") {
        await connection.execute(
          `UPDATE MANGA
                  SET BANNER_IMAGE = :bannerimage
                  WHERE ENGLISH = :utitle`,
          [obj.bannerimage, utitle]
        );
      }
      if (obj.mangaurl !== "") {
        await connection.execute(
          `UPDATE MANGA
                  SET MANGA_URL = :mangaurl
                  WHERE ENGLISH = :utitle`,
          [obj.mangaurl, utitle]
        );
      }

      await connection.commit();
      await connection.close();
      res.redirect("/admin");
      console.log(obj);
    }
  } else {
    res.json({ isAdmin: "You are not an admin" });
  }
};

const adminDeleteAnimeControllerGET = async (req, res) => {
  console.log("in the adminDeleteAnimeControllerGET");
  console.log(req.url, req.method);
  if (req.session.user) {
    res.render("admin_delete_anime", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

const adminDeleteAnimeControllerPOST = async (req, res) => {
  console.log("in the adminDeleteAnimeControllerPOST");
  console.log(req.url, req.method);

  if (req.session.user && req.session.user.ROLE === "ADMIN") {
    const obj = req.body;

    const connection = await connect();

    if (obj.hasOwnProperty("update")) {
      let title = obj.title;

      const animeTitles = (
        await connection.execute(
          `SELECT ENGLISH
              FROM ANIME A
              WHERE LOWER(A.ENGLISH) LIKE '%' || LOWER(:title) || '%'
            `,
          [title],
          { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
      ).rows;

      res.json({
        animeTitles,
      });
    } else {
      const utitle = obj.selectAnime;
      console.log(utitle);
      await connection.execute(
        `DELETE FROM ANIME
                WHERE ENGLISH = :utitle`,
        [utitle]
      );
      await connection.commit();
      await connection.close();
      res.redirect("/admin");
    }
  }
};

const adminDeleteMangaControllerGET = async (req, res) => {
  console.log("in the adminDeleteMangaControllerGET");
  console.log(req.url, req.method);
  if (req.session.user) {
    res.render("admin_delete_manga", {
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME,
    });
  } else {
    res.redirect("/login");
  }
};

const adminDeleteMangaControllerPOST = async (req, res) => {
  console.log("in the adminDeleteMangaControllerPOST");
  console.log(req.url, req.method);
  if (req.session.user && req.session.user.ROLE === "ADMIN") {
    const obj = req.body;

    const connection = await connect();

    if (obj.hasOwnProperty("update")) {
      let title = obj.title;

      const mangaTitles = (
        await connection.execute(
          `SELECT ENGLISH
            FROM MANGA A
            WHERE LOWER(A.ENGLISH) LIKE '%' || LOWER(:title) || '%'
          `,
          [title],
          { outFormat: oracledb.OUT_FORMAT_OBJECT }
        )
      ).rows;

      res.json({
        mangaTitles,
      });
    } else {
      const utitle = obj.selectManga;
      console.log(utitle);
      await connection.execute(
        `DELETE FROM MANGA
              WHERE ENGLISH = :utitle`,
        [utitle]
      );
      await connection.commit();
      await connection.close();
      res.redirect("/admin");
    }
  }
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
  adminUpdateAnimeCharacterControllerGET,
  adminUpdateAnimeCharacterControllerPOST,
  adminUpdateAnimeCharacterVAControllerGET,
  adminUpdateAnimeCharacterVAControllerPOST,
  adminUpdateAnimeStaffControllerGET,
  adminUpdateAnimeStaffControllerPOST,
  adminUpdateAnimeStaffStudioProducerControllerGET,
  adminUpdateAnimeStaffStudioProducerControllerPOST,
  adminUpdateMangaControllerGET,
  adminUpdateMangaControllerPOST,
  adminDeleteAnimeControllerGET,
  adminDeleteAnimeControllerPOST,
  adminDeleteMangaControllerGET,
  adminDeleteMangaControllerPOST,
  adminDatabaseLogControllerGET,
};