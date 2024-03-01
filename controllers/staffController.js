const connect = require("./connect");
const oracledb = require("oracledb");

const staffControllerGET = async (req, res) => {
  console.log("in the staffControllerGET");
  console.log(req.url, req.method);
  console.log(req.params);

  const obj = req.params;

  let userid = null;

  if (req.session.user) {
    userid = req.session.user.USER_ID;
  }

  const connection = await connect();

  const staffs = (
    await connection.execute(
      `
        SELECT *
        FROM STAFF S
        WHERE S.STAFF_ID = :id
    `,
      {
        id: obj.id,
      },
      {
        outFormat: oracledb.OUT_FORMAT_OBJECT,
      }
    )
  ).rows;

  let isLiked =
    (
      await connection.execute(
        `
        SELECT *
        FROM USER_LIKES_STAFF
        WHERE USER_ID = :userid AND STAFF_ID = :staffid
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
        FROM USER_LIKES_STAFF
        WHERE STAFF_ID = :staffid
    `,
      [obj.id]
    )
  ).rows[0][0];

  await connection.close();

  if (req.session.user) {
    res.render("staff", {
      staff: staffs[0],
      isLiked,
      counter,
      isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
      userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
      username: req.session.user.USERNAME
    });
  } else {
    res.redirect("/login");
  }
};

const staffControllerPOST = async (req, res) => {
  console.log("in the staffControllerPOST");
  console.log(req.url, req.method);

  let staffid = Number(req.url.split("/")[2]);
  let userid = null;

  if (req.session.user) {
    userid = req.session.user.USER_ID;
  }

  const connection = await connect();

  const userdata = (
    await connection.execute(
      `
        SELECT *
        FROM USER_LIKES_STAFF
        WHERE USER_ID = :userid AND STAFF_ID = :staffid
    `,
      [userid, staffid],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    )
  ).rows;

  let isLiked = null;

  if (userdata.length === 0) {
    await connection.execute(
      `
            INSERT INTO USER_LIKES_STAFF(USER_ID, STAFF_ID) 
            VALUES (:userid, :staffid)
        `,
      [userid, staffid],
      { autoCommit: true }
    );

    isLiked = true;
  } else {
    await connection.execute(
      `
            DELETE FROM USER_LIKES_STAFF
            WHERE USER_ID = :userid AND STAFF_ID = :staffid
        `,
      [userid, staffid],
      { autoCommit: true }
    );
    isLiked = false;
  }

  let counter = await connection.execute(
    `
        BEGIN
            :result := GET_STAFF_LIKES_COUNT(:staffid);
        END;`,
    {
      staffid: {
        dir: oracledb.BIND_IN,
        type: oracledb.NUMBER,
        val: staffid,
      },
      result: { dir: oracledb.BIND_OUT, type: oracledb.NUMBER },
    }
  );

  counter = counter.outBinds.result;

  await connection.close();

  res.json({ counter, isLiked });
};

module.exports = {
  staffControllerGET,
  staffControllerPOST,
};


// let counter = await connection.execute(
//   `
//         BEGIN
//             :result := GET_CHARACTER_LIKES_COUNT(:characterid);
//         END;`,
//   {
//     characterid: {
//       dir: oracledb.BIND_IN,
//       type: oracledb.NUMBER,
//       val: characterid,
//     },
//     result: { dir: oracledb.BIND_OUT, type: oracledb.NUMBER },
//   }
// );

// counter = counter.outBinds.result;