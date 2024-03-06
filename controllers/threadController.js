const connect = require("./connect")
const oracledb = require("oracledb")


const forumControllerGET = async (req, res) => {
    console.log("in the forumControllerGET")
    console.log(req.url, req.method)

    if (req.session.user) {
        res.render("forum", {
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        })
    } else {
        res.redirect("/login")
    }
}


const createThreadControllerGET = async (req, res) => {
    console.log(req.url, req.method)
    console.log("in the createThreadControllerGET")

    if (req.session.user) {
        res.render("create_a_thread", {
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        })
    } else {
        res.redirect("/login")
    }
}

const createThreadControllerPOST = async (req, res) => {
    console.log(req.url, req.method)
    console.log("in the createThreadControllerPOST")

    if (req.session.user) {

        if (req.body.hasOwnProperty("post")) {
            title = req.body.search === "" ? "NaN" : req.body.search;
            console.log(title);

            const connection = await connect();

            const animes = (
                await connection.execute(
                    `
            SELECT ENGLISH
            FROM ANIME A
            WHERE UPPER(A.ENGLISH) LIKE '%' || UPPER(:title) || '%' AND UPPER(:title) <> 'NaN'
        `,
                    [title, title],
                    { outFormat: oracledb.OUT_FORMAT_OBJECT }
                )
            ).rows;

            const mangas = (
                await connection.execute(
                    `
            SELECT ENGLISH
            FROM MANGA M
            WHERE UPPER(M.ENGLISH) LIKE '%' || UPPER(:title) || '%' AND UPPER(:title) <> 'NaN'
        `,
                    [title, title],
                    { outFormat: oracledb.OUT_FORMAT_OBJECT }
                )
            ).rows;

            for (let i = 0; i < animes.length; ++i) {
                animes[i].type = "anime"
                // animes[i].ENGLISH = animes[i].ENGLISH + " (Anime)";
            }

            for (let i = 0; i < mangas.length; ++i) {
                mangas[i].type = "manga"
                // mangas[i].ENGLISH = mangas[i].ENGLISH + " (Manga)";
            }

            const medias = animes.concat(mangas);

            res.json({ medias });

            await connection.close();
        } else {
            console.log("create section")
            console.log(req.body)
        }

    } else {
        res.json({ session: "log in again" })
    }
}



module.exports = {
    createThreadControllerGET,
    createThreadControllerPOST,
    forumControllerGET,
}