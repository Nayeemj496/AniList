const oracledb = require("oracledb")

oracledb.autoCommit = true

const dbConfig = {
    user: "anilist",
    password: "anilist",
    connectionString: "localhost:1521/ORCL",
}

async function executesql(sql, binds) {
    let connection, results
    try {
        connection = await oracledb.getConnection(dbConfig)
        results = await connection.execute(sql, binds, {
            outFormat: oracledb.OUT_FORMAT_OBJECT
        })
    } catch (err) {
        console.log('error executing sql', err)
    } finally {
        if (connection) {
            try {
                await connection.close();
            } catch (err) {
                console.error(err);
            }
        }
    }
    return results
}


async function getuser(username) {
    let sql = `
        SELECT *
        FROM USERR
        WHERE USERNAME = :USERNAME
    `
    return (await executesql(sql, [username], {
        outFormat: oracledb.OUT_FORMAT_OBJECT
    })).rows
}


async function insertuserintoDB(username, email, hashpassword) {
    const ui = null

    let sql = `
        INSERT INTO USERR(USERNAME, EMAIL_USER, PASSWORDD, USER_IMAGE)   
        VALUES(
            :USERNAME,
            :EMAIL_USER,
            :PASSWORDD,
            :USER_IMAGE
        )
    `

    return await executesql(sql, [username, email, hashpassword, ui], {
        outFormat: oracledb.OUT_FORMAT_OBJECT
    })
}


module.exports = { executesql, getuser, insertuserintoDB }