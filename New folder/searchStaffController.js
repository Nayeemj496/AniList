const oracledb = require("oracledb")
const connect = require("./connect")


const searchStaffControllerGET = async (req, res) => {
    console.log("in the searchStaffControllerGET")
    console.log(req.url, req.method)
    console.log(req.query)

    const connection = await connect()

    let staffs = null

    let allStaffsData = await connection.execute(`
        SELECT * FROM STAFF ORDER BY FULL_NAME
    `, {}, { outFormat: oracledb.OUT_FORMAT_OBJECT })

    const allStaffs = allStaffsData.rows

    let length = Object.keys(req.query).length

    if (length === 1) {
        if (req.query.hasOwnProperty("name")) {
            const staffData = await connection.execute(`
                SELECT *
                FROM STAFF
                WHERE UPPER(FULL_NAME) LIKE '%' || UPPER(:name) || '%' OR NATIVE = :name
            `, {
                name: req.query.name,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            staffs = staffData.rows
        }
    }

    await connection.close()

    if(req.session.user) {
        if (!Object.keys(req.query).length) {
            res.render("search_staff", {
                search: req.query,
                staffs: allStaffs,
                isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
                userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
                username: req.session.user.USERNAME
            })
        } else {
            res.render("search_staff", {
                search: req.query,
                staffs,
                isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
                userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
                username: req.session.user.USERNAME
            });
        }
    } else {
        res.redirect("/login")
    }
}


const searchStaffControllerPOST = async (req, res) => {
    console.log("in the searchStaffControllerPOST")
    console.log(req.url, req.method)
    console.log(req.body)

    const request = req.body

    let str = ""

    if (request.name) {
        str += `name=${request.name}`
    }

    str ? res.redirect(`/search/staff?${str}`) : res.redirect(`/search/staff`)
}


module.exports = {
    searchStaffControllerGET,
    searchStaffControllerPOST
}