const oracledb = require("oracledb")
const connect = require("./connect")
const utility = require("./utilityFunction")
const sqlAnimeQuery = require("../queries/animeQuery")

const searchAnimeControllerGET = async (req, res) => {
    console.log("in the searchAnimeControllerGET")
    console.log(req.url, req.method)
    console.log(req.query)

    const connection = await connect()

    let animes = null

    let allAnimesData = await connection.execute(`
        SELECT * FROM ANIME ORDER BY ENGLISH
    `, {}, { outFormat: oracledb.OUT_FORMAT_OBJECT })

    const allAnimes = allAnimesData.rows

    let length = Object.keys(req.query).length

    if (length === 1) {
        if (req.query.hasOwnProperty("name")) {
            const animeData = await connection.execute(sqlAnimeQuery.sqlAnime, {
                name: req.query.name,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeData.rows

        } else if (req.query.hasOwnProperty("genre")) {
            const genreData = await connection.execute(sqlAnimeQuery.sqlGenre, {
                genre: req.query.genre.toUpperCase(),
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = genreData.rows

        } else if (req.query.hasOwnProperty("year")) {
            const yearData = await connection.execute(sqlAnimeQuery.sqlYear, {
                year: Number(req.query.year),
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = yearData.rows

        } else if (req.query.hasOwnProperty("season")) {
            const seasonData = await connection.execute(sqlAnimeQuery.sqlSeason, {
                season: req.query.season.toUpperCase(),
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = seasonData.rows

        } else if (req.query.hasOwnProperty("format")) {
            const formatData = await connection.execute(sqlAnimeQuery.sqlFormat, {
                format: req.query.format,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = formatData.rows
        }
    } else if (length == 2) {
        if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre")) {
            const animeGenreData = await connection.execute(sqlAnimeQuery.sqlAnimeGenre, {
                name: req.query.name,
                genre: req.query.genre
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeGenreData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("year")) {
            const animeYearData = await connection.execute(sqlAnimeQuery.sqlAnimeYear, {
                name: req.query.name,
                year: Number(req.query.year)
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeYearData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("season")) {
            const animeSeasonData = await connection.execute(sqlAnimeQuery.sqlAnimeSeason, {
                name: req.query.name,
                season: req.query.season
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeSeasonData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("format")) {
            const animeFormatData = await connection.execute(sqlAnimeQuery.sqlAnimeFormat, {
                name: req.query.name,
                format: req.query.format
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeFormatData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("year")) {
            const genreYearData = await connection.execute(sqlAnimeQuery.sqlGenreYear, {
                genre: req.query.genre,
                year: Number(req.query.year)
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = genreYearData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("season")) {
            const genreSeasonData = await connection.execute(sqlAnimeQuery.sqlGenreSeason, {
                genre: req.query.genre,
                season: req.query.season
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = genreSeasonData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("format")) {
            const genreFormatData = await connection.execute(sqlAnimeQuery.sqlGenreFormat, {
                genre: req.query.genre,
                format: req.query.format
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = genreFormatData.rows
        } else if (req.query.hasOwnProperty("year") && req.query.hasOwnProperty("season")) {
            const yearSeasonData = await connection.execute(sqlAnimeQuery.sqlYearSeason, {
                year: Number(req.query.year),
                season: req.query.season
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = yearSeasonData.rows
        } else if (req.query.hasOwnProperty("year") && req.query.hasOwnProperty("format")) {
            const yearFormatData = await connection.execute(sqlAnimeQuery.sqlYearFormat, {
                year: Number(req.query.year),
                format: req.query.format
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = yearFormatData.rows
        } else if (req.query.hasOwnProperty("season") && req.query.hasOwnProperty("format")) {
            const seasonFormatData = await connection.execute(sqlAnimeQuery.sqlSeasonFormat, {
                season: req.query.season,
                format: req.query.format
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = seasonFormatData.rows
        }
    } else if (length === 3) {
        if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("year")) {
            const animeGenreYearData = await connection.execute(sqlAnimeQuery.sqlAnimeGenreYear, {
                name: req.query.name,
                genre: req.query.genre,
                year: Number(req.query.year)
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeGenreYearData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("season")) {
            const animeGenreSeasonData = await connection.execute(sqlAnimeQuery.sqlAnimeGenreSeason, {
                name: req.query.name,
                genre: req.query.genre,
                season: req.query.season
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeGenreSeasonData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("format")) {
            const animeGenreFormatData = await connection.execute(sqlAnimeQuery.sqlAnimeGenreFormat, {
                name: req.query.name,
                genre: req.query.genre,
                format: req.query.format
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeGenreFormatData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("year") && req.query.hasOwnProperty("season")) {
            const animeYearSeasonData = await connection.execute(sqlAnimeQuery.sqlAnimeYearSeason, {
                name: req.query.name,
                year: Number(req.query.year),
                season: req.query.season
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeYearSeasonData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("year") && req.query.hasOwnProperty("format")) {
            const animeYearFormatData = await connection.execute(sqlAnimeQuery.sqlAnimeYearFormat, {
                name: req.query.name,
                year: Number(req.query.year),
                format: req.query.format
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeYearFormatData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("season") && req.query.hasOwnProperty("format")) {
            const animeSeasonFormatData = await connection.execute(sqlAnimeQuery.sqlAnimeSeasonFormat, {
                name: req.query.name,
                season: req.query.season,
                format: req.query.format
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeSeasonFormatData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("year") && req.query.hasOwnProperty("season")) {
            const genreYearSeasonData = await connection.execute(sqlAnimeQuery.sqlGenreYearSeason, {
                genre: req.query.genre,
                year: Number(req.query.year),
                season: req.query.season
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = genreYearSeasonData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("year") && req.query.hasOwnProperty("format")) {
            const genreYearFormatData = await connection.execute(sqlAnimeQuery.sqlGenreYearFormat, {
                genre: req.query.genre,
                year: Number(req.query.year),
                format: req.query.format
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = genreYearFormatData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("season") && req.query.hasOwnProperty("format")) {
            const genreSeasonFormatData = await connection.execute(sqlAnimeQuery.sqlGenreSeasonFormat, {
                genre: req.query.genre,
                season: req.query.season,
                format: req.query.format
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = genreSeasonFormatData.rows
        } else if (req.query.hasOwnProperty("year") && req.query.hasOwnProperty("season") && req.query.hasOwnProperty("format")) {
            const yearSeasonFormatData = await connection.execute(sqlAnimeQuery.sqlYearSeasonFormat, {
                year: Number(req.query.year),
                season: req.query.season,
                format: req.query.format
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = yearSeasonFormatData.rows
        }
    } else if (length === 4) {
        if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("year") && req.query.hasOwnProperty("season")) {
            const animeGenreYearSeasonData = await connection.execute(sqlAnimeQuery.sqlAnimeGenreYearSeason, {
                name: req.query.name,
                genre: req.query.genre,
                year: req.query.year,
                season: req.query.season,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeGenreYearSeasonData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("year") && req.query.hasOwnProperty("format")) {
            const animeGenreYearFormatData = await connection.execute(sqlAnimeQuery.sqlAnimeGenreYearFormat, {
                name: req.query.name,
                genre: req.query.genre,
                year: req.query.year,
                format: req.query.format,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeGenreYearFormatData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("season") && req.query.hasOwnProperty("format")) {
            const animeGenreSeasonFormatData = await connection.execute(sqlAnimeQuery.sqlAnimeGenreSeasonFormat, {
                name: req.query.name,
                genre: req.query.genre,
                season: req.query.season,
                format: req.query.format,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeGenreSeasonFormatData.rows
        } else if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("year") && req.query.hasOwnProperty("season") && req.query.hasOwnProperty("format")) {
            const animeYearSeasonFormatData = await connection.execute(sqlAnimeQuery.sqlAnimeYearSeasonFormat, {
                name: req.query.name,
                year: Number(req.query.year),
                season: req.query.season,
                format: req.query.format,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeYearSeasonFormatData.rows
        } else if (req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("year") && req.query.hasOwnProperty("season") && req.query.hasOwnProperty("format")) {
            const genreYearSeasonFormatData = await connection.execute(sqlAnimeQuery.sqlGenreYearSeasonFormat, {
                genre: req.query.genre,
                year: Number(req.query.year),
                season: req.query.season,
                format: req.query.format,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = genreYearSeasonFormatData.rows
        }

    } else if (length === 5) {
        if (req.query.hasOwnProperty("name") && req.query.hasOwnProperty("genre") && req.query.hasOwnProperty("year") && req.query.hasOwnProperty("season") && req.query.hasOwnProperty("format")) {
            const animeGenreYearSeasonFormatData = await connection.execute(sqlAnimeQuery.sqlAnimeGenreYearSeasonFormat, {
                name: req.query.name,
                genre: req.query.genre,
                year: Number(req.query.year),
                season: req.query.season,
                format: req.query.format,
            }, { outFormat: oracledb.OUT_FORMAT_OBJECT });

            animes = animeGenreYearSeasonFormatData.rows
        }
    }

    

    await connection.close()

    if(req.session.user) {
        if (!Object.keys(req.query).length) {
            res.render("anime", {
                search: req.query,
                animes: allAnimes,
                isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
                userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
                username: req.session.user.USERNAME
            });
        } else {
            res.render("anime", {
                search: req.query,
                animes,
                isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
                userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
                username: req.session.user.USERNAME
            });
        }
    } else {
        res.redirect("/login")
    }
}


const searchAnimeControllerPOST = async (req, res) => {
    console.log("in the searchAnimeControllerPOST")
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
    if (request.year) {
        if (!str) str += `year=${request.year}`
        else str += `&&year=${request.year}`
    }
    if (request.season) {
        if (!str) str += `season=${request.season}`
        else str += `&&season=${request.season}`
    }
    if (request.format) {
        if (!str) str += `format=${request.format}`
        else str += `&&format=${request.format}`
    }

    str ? res.redirect(`/search/anime?${str}`) : res.redirect(`/search/anime`)
}


module.exports = { searchAnimeControllerGET, searchAnimeControllerPOST }