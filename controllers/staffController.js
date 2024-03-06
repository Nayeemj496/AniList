const connect = require("./connect");
const oracledb = require("oracledb");
const strftime = require("strftime")

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
        SELECT STAFF_ID,FULL_NAME,NATIVE,IMAGE,DATE_OF_BIRTH_YEAR,DATE_OF_BIRTH_MONTH,DATE_OF_BIRTH_DAY,DATE_OF_DEATH_YEAR,DATE_OF_DEATH_MONTH,DATE_OF_DEATH_DAY,YEARS_ACTIVE_START,YEARS_ACTIVE_END,HOME_TOWN,ROLE,GENDER,CAST(SUBSTR(DESCRIPTION, 1, 2000) AS VARCHAR2(4000)) AS DESCRIPTION
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
      username: req.session.user.USERNAME,
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

  const io = req.io;

  let string = null;
  let parameter = `STAFF_ID: ${staffid}`;
  let event = `Function: GET_STAFF_LIKES_COUNT(STAFF_ID)`;

  if (req.session.user) {
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
