const connect = require("./connect")
const oracledb = require("oracledb")

const voiceArtistControllerGET = async (req, res) => {
    console.log("in the voiceArtistControllerGET")
    console.log(req.url, req.method)
    console.log(req.params)

    const obj = req.params

    let userid = null

    if(req.session.user) {
        userid = req.session.user.USER_ID
    }

    const connection = await connect()

    const voiceArtists = (await connection.execute(`
        SELECT *
        FROM VOICE_ARTIST VA
        WHERE VA.VA_ID = :id
    `, {
        id: obj.id
    }, {
        outFormat: oracledb.OUT_FORMAT_OBJECT
    })).rows

    let isLiked =
      (
        await connection.execute(
          `
        SELECT *
        FROM USER_LIKES_VA
        WHERE USER_ID = :userid AND VA_ID = :vaid
    `,
          [userid, obj.id]
        )
      ).rows.length === 0
        ? false
        : true;

    let counter = (
      await connection.execute(
        `
        SELECT COUNT(*)
        FROM USER_LIKES_VA
        WHERE VA_ID = :vaid
    `,
        [obj.id]
      )
    ).rows[0][0];

    await connection.close()

    if(req.session.user) {
        res.render("voice_artist", {
            voiceArtist: voiceArtists[0],
            isLiked,
            counter,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        })
    } else {
        res.redirect("/login")
    }
}


const voiceArtistControllerPOST = async (req, res) => {
  console.log("in the voiceArtistControllerPOST");
  console.log(req.url, req.method);

  let vaid = Number(req.url.split("/")[2]);
  let userid = null;

  if (req.session.user) {
    userid = req.session.user.USER_ID;
  }

  const connection = await connect();

  const userdata = (
    await connection.execute(
      `
        SELECT *
        FROM USER_LIKES_VA
        WHERE USER_ID = :userid AND VA_ID = :vaid
    `,
      [userid, vaid],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;

  let isLiked = null;

  if (userdata.length === 0) {
    await connection.execute(
      `
            INSERT INTO USER_LIKES_VA(USER_ID, VA_ID) 
            VALUES (:userid, :vaid)
        `,
      [userid, vaid],
      { autoCommit: true }
    );

    isLiked = true;
  } else {
    await connection.execute(
      `
            DELETE FROM USER_LIKES_VA
            WHERE USER_ID = :userid AND VA_ID = :vaid
        `,
      [userid, vaid],
      { autoCommit: true }
    );
    isLiked = false;
  }

  let counter = (
    await connection.execute(
      `
        SELECT COUNT(*)
        FROM USER_LIKES_VA
        WHERE VA_ID = :vaid
    `,
      [vaid]
    )
  ).rows[0][0];

  await connection.close();

  res.json({ counter, isLiked });
};


module.exports = {
    voiceArtistControllerGET,
    voiceArtistControllerPOST,
}