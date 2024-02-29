const connect = require("./connect")
const oracledb = require("oracledb")

const characterControllerGET = async (req, res) => {
    console.log("in the characterControllerGET")
    console.log(req.url, req.method)
    console.log(req.params)

    const obj = req.params

    let userid = null

    if(req.session.user) {
        userid = req.session.user.USER_ID
    }

    const connection = await connect()

    const characters = (await connection.execute(`
        SELECT CHARACTER_ID, FULL_NAME, NATIVE, IMAGE, MANGA_ID, VA_ID, ROLE, GENDER, AGE, CAST(SUBSTR(DESCRIPTION, 1, 2000) AS VARCHAR2(4000)) AS DESCRIPTION
        FROM CHARACTER C 
        WHERE C.CHARACTER_ID = :id
    `, {
        id: obj.id
    }, {
        outFormat: oracledb.OUT_FORMAT_OBJECT
    })).rows

    let isLiked = (await connection.execute(`
        SELECT *
        FROM USER_LIKES_CHARACTER 
        WHERE USER_ID = :userid AND CHARACTER_ID = :characterid
    `, [userid, obj.id])).rows.length === 0 ? false : true
    

    let counter = (await connection.execute(`
        SELECT COUNT(*)
        FROM USER_LIKES_CHARACTER
        WHERE CHARACTER_ID = :characterid
    `, [obj.id])).rows[0][0]

    await connection.close()

    if(req.session.user) {
        
        res.render("character", {
            character: characters[0],
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


const characterControllerPOST = async (req, res) => {
    console.log("in the characterControllerPOST")
    console.log(req.url, req.method)

    let characterid = Number(req.url.split("/")[2])
    let userid = null

    if(req.session.user) {
        userid = req.session.user.USER_ID
    }

    const connection = await connect()

    const userdata = (await connection.execute(`
        SELECT *
        FROM USER_LIKES_CHARACTER
        WHERE USER_ID = :userid AND CHARACTER_ID = :characterid
    `, [userid, characterid], {outFormat: oracledb.OUT_FORMAT_OBJECT})).rows

    let isLiked = null

    if(userdata.length === 0) {
        await connection.execute(`
            INSERT INTO USER_LIKES_CHARACTER(USER_ID, CHARACTER_ID) 
            VALUES (:userid, :characterid)
        `, [userid, characterid], {autoCommit: true})

        isLiked = true
    } else {
        await connection.execute(`
            DELETE FROM USER_LIKES_CHARACTER
            WHERE USER_ID = :userid AND CHARACTER_ID = :characterid
        `, [userid, characterid], {autoCommit: true})
        isLiked = false 
    }

    let counter = (await connection.execute(`
        SELECT COUNT(*)
        FROM USER_LIKES_CHARACTER
        WHERE CHARACTER_ID = :characterid
    `, [characterid])).rows[0][0]

    await connection.close()

    res.json({counter, isLiked})
}


module.exports = {
    characterControllerGET,
    characterControllerPOST
}