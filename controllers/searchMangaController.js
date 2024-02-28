const oracledb = require("oracledb")
const connect = require("./connect")
const utility = require("./utilityFunction")
const sqlMangaQuery = require("../queries/mangaQuery")

const searchMangaControllerGET = async (req, res) => {
    console.log("in the searchMangaControllerGET")
    console.log(req.url, req.method)
    console.log(req.query)

    const connection = await connect()

    let mangas = null

    let allMangasData = await connection.execute(`
        SELECT * FROM MANGA ORDER BY ENGLISH
    `, {}, { outFormat: oracledb.OUT_FORMAT_OBJECT })

    const allMangas = allMangasData.rows

    let length = Object.keys(req.query).length

    if (length === 1) {
        if (req.query.hasOwnProperty("name")) {
            const mangaData = await connection.execute(sqlMangaQuery.sqlManga, {
                name: req.query.name,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaData.rows

        } else if (req.query.hasOwnProperty("genre")) {
            const genreData = await connection.execute(sqlMangaQuery.sqlGenre, {
                genre: req.query.genre,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = genreData.rows

        } else if (req.query.hasOwnProperty("format")) {
            console.log("not working here here ")
            const formatData = await connection.execute(sqlMangaQuery.sqlFormat, {
                format: req.query.format,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = formatData.rows

        } else if (req.query.hasOwnProperty("status")) {
            console.log("its working")
            const statusData = await connection.execute(sqlMangaQuery.sqlStatus, {
                status: req.query.status,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = statusData.rows

        } else if (req.query.hasOwnProperty("origin")) {
            const originData = await connection.execute(sqlMangaQuery.sqlOrigin, {
                origin: req.query.origin,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = originData.rows
        }
    } else if (length == 2) {
        if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre")) {
            const mangaGenreData = await connection.execute(sqlMangaQuery.sqlMangaGenre, {
                name: req.query.name,
                genre: req.query.genre
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaGenreData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("format")) {
            const mangaFormatData = await connection.execute(sqlMangaQuery.sqlMangaFormat, {
                name: req.query.name,
                format: req.query.format
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaFormatData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("status")) {
            const mangaStatusData = await connection.execute(sqlMangaQuery.sqlMangaStatus, {
                name: req.query.name,
                status: req.query.status
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaStatusData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("origin")) {
            const mangaOriginData = await connection.execute(sqlMangaQuery.sqlMangaOrigin, {
                name: req.query.name,
                origin: req.query.origin
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaOriginData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("format")) {
            const genreFormatData = await connection.execute(sqlMangaQuery.sqlGenreFormat, {
                genre: req.query.genre,
                format: req.query.format
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = genreFormatData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("status")) {
            const genreStatusData = await connection.execute(sqlMangaQuery.sqlGenreStatus, {
                genre: req.query.genre,
                status: req.query.status
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = genreStatusData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("origin")) {
            const genreOriginData = await connection.execute(sqlMangaQuery.sqlGenreOrigin, {
                genre: req.query.genre,
                origin: req.query.origin
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = genreOriginData.rows
        } else if (req.query.hasOwnProperty("format") && req.query.hasOwnProperty("status")) {
            const formatStatusData = await connection.execute(sqlMangaQuery.sqlFormatStatus, {
                format: req.query.format,
                status: req.query.status
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = formatStatusData.rows
        } else if (req.query.hasOwnProperty("format") && req.query.hasOwnProperty("origin")) {
            const formatOriginData = await connection.execute(sqlMangaQuery.sqlFormatOrigin, {
                format: req.query.format,
                origin: req.query.origin
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = formatOriginData.rows
        } else if (req.query.hasOwnProperty("status") && req.query.hasOwnProperty("origin")) {
            const statusOriginData = await connection.execute(sqlMangaQuery.sqlStatusOrigin, {
                status: req.query.status,
                origin: req.query.origin
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = statusOriginData.rows
        }
    } else if (length === 3) {
        if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("format")) {
            const mangaGenreFormatData = await connection.execute(sqlMangaQuery.sqlMangaGenreFormat, {
                name: req.query.name,
                genre: req.query.genre,
                format: req.query.format
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaGenreFormatData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("status")) {
            const mangaGenreStatusData = await connection.execute(sqlMangaQuery.sqlMangaGenreStatus, {
                name: req.query.name,
                genre: req.query.genre,
                status: req.query.status
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaGenreStatusData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("origin")) {
            const mangaGenreOriginData = await connection.execute(sqlMangaQuery.sqlMangaGenreOrigin, {
                name: req.query.name,
                genre: req.query.genre,
                origin: req.query.origin
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaGenreOriginData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("format") && req.query.hasOwnProperty("status")) {
            const mangaFormatStatusData = await connection.execute(sqlMangaQuery.sqlMangaFormatStatus, {
                name: req.query.name,
                format: req.query.format,
                status: req.query.status
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaFormatStatusData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("format") && req.query.hasOwnProperty("origin")) {
            const mangaFormatOriginData = await connection.execute(sqlMangaQuery.sqlMangaFormatOrigin, {
                name: req.query.name,
                format: req.query.format,
                origin: req.query.origin
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaFormatOriginData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("status") && req.query.hasOwnProperty("origin")) {
            const mangaStatusOriginData = await connection.execute(sqlMangaQuery.sqlMangaStatusOrigin, {
                name: req.query.name,
                status: req.query.status,
                origin: req.query.origin
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaStatusOriginData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("format") && req.query.hasOwnProperty("status")) {
            const genreFormatStatusData = await connection.execute(sqlMangaQuery.sqlGenreFormatStatus, {
                genre: req.query.genre,
                format: req.query.format,
                status: req.query.status
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = genreFormatStatusData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("format") && req.query.hasOwnProperty("origin")) {
            const genreFormatOriginData = await connection.execute(sqlMangaQuery.sqlGenreFormatOrigin, {
                genre: req.query.genre,
                format: req.query.format,
                origin: req.query.origin
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = genreFormatOriginData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("status") && req.query.hasOwnProperty("origin")) {
            const genreStatusOriginData = await connection.execute(sqlMangaQuery.sqlGenreStatusOrigin, {
                genre: req.query.genre,
                status: req.query.status,
                origin: req.query.origin
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = genreStatusOriginData.rows
        } else if (req.query.hasOwnProperty("format") && req.query.hasOwnProperty("status") && req.query.hasOwnProperty("origin")) {
            const formatStatusOriginData = await connection.execute(sqlMangaQuery.sqlFormatStatusOrigin, {
                format: req.query.format,
                status: req.query.status,
                origin: req.query.origin
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = formatStatusOriginData.rows
        }
    } else if (length === 4) {
        if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("format") && req.query.hasOwnProperty("status")) {
            const mangaGenreFormatStatusData = await connection.execute(sqlMangaQuery.sqlMangaGenreFormatStatus, {
                name: req.query.name,
                genre: req.query.genre,
                format: req.query.format,
                status: req.query.status
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaGenreFormatStatusData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("format") && req.query.hasOwnProperty("origin")) {
            const mangaGenreFormatOriginData = await connection.execute(sqlMangaQuery.sqlMangaGenreFormatOrigin, {
                name: req.query.name,
                genre: req.query.genre,
                format: req.query.format,
                origin: req.query.origin,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaGenreFormatOriginData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("status") && req.query.hasOwnProperty("origin")) {
            const mangaGenreStatusOriginData = await connection.execute(sqlMangaQuery.sqlMangaGenreStatusOrigin, {
                name: req.query.name,
                genre: req.query.genre,
                status: req.query.status,
                origin: req.query.origin
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaGenreStatusOriginData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("format") && req.query.hasOwnProperty("status") && req.query.hasOwnProperty("origin")) {
            const mangaFormatStatusOriginData = await connection.execute(sqlMangaQuery.sqlMangaFormatStatusOrigin, {
                name: req.query.name,
                format: req.query.format,
                status: req.query.status,
                origin: req.query.origin,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaFormatStatusOriginData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("format") && req.query.hasOwnProperty("status") && req.query.hasOwnProperty("origin")) {
            const genreFormatStatusOriginData = await connection.execute(sqlMangaQuery.sqlGenreFormatStatusOrigin, {
                genre: req.query.genre,
                format: req.query.format,
                status: req.query.status,
                origin: req.query.origin
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = genreFormatStatusOriginData.rows
        }

    } else if (length === 5) {
        if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("format") && req.query.hasOwnProperty("status") && req.query.hasOwnProperty("origin")) {
            const mangaGenreFormatStatusOriginData = await connection.execute(sqlMangaQuery.sqlMangaGenreFormatStatusOrigin, {
                name: req.query.name,
                genre: req.query.genre,
                format: req.query.format,
                status: req.query.status,
                origin: req.query.origin
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            mangas = mangaGenreFormatStatusOriginData.rows
        }
    }

    await connection.close()

    if(req.session.user) {
        if (!Object.keys(req.query).length) {
            res.render("manga", {
                search: req.query,
                mangas: allMangas,
                isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
                userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
                username: req.session.user.USERNAME
            })
        } else {
            if(mangas === null) console.log("null chilo")
            res.render("manga", {
                search: req.query,
                mangas,
                isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
                userimage:
                req.session.user.USER_IMAGE || "/images/photos/user.png",
                username: req.session.user.USERNAME
            });
        }
    } else {
        res.redirect("/login")
    }
}


const searchMangaControllerPOST = async (req, res) => {
    console.log("in the searchMangaControllerPOST")
    console.log(req.url, req.method)
    console.log(req.body)

    const request = req.body

    let str = ""

    if (request.name) {
        str += `name=${request.name}`
    }
    if (request.genre) {
        if (!str) str += `genre=${request.genre}`
        else str += `&&genre=${request.genre}`
    }
    if (request.format) {
        if (!str) str += `format=${request.format}`
        else str += `&&format=${request.format}`
    }
    if (request.status) {
        if (!str) str += `status=${request.status}`
        else str += `&&status=${request.status}`
    }
    if (request.origin) {
        if (!str) str += `origin=${request.origin}`
        else str += `&&origin=${request.origin}`
    }

    str ? res.redirect(`/search/manga?${str}`) : res.redirect(`/search/manga`)
}


module.exports = { searchMangaControllerGET, searchMangaControllerPOST }