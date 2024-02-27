const oracledb = require("oracledb")

const connect = async () => {
    let connection =  null

    try {
        connection = await oracledb.getConnection({
            "user": "anilist",
            "password": "anilist",
            "connectString": "localhost:1521/ORCL"
        })
        return connection
    } catch(err) {
        console.log("Couldn't connect to the database")
        console.log(err)
    }
}

module.exports = connect