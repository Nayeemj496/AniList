const oracledb = require("oracledb");
const connect = require("./connect");

const searchCharacterControllerGET = async (req, res) => {
    console.log("in the searchCharacterControllerGET");
    console.log(req.url, req.method);
    console.log(req.query);

    const connection = await connect();

    let characters = null;

    let allCharactersData = await connection.execute(
        `
        SELECT * FROM CHARACTER ORDER BY FULL_NAME
    `,
        {},
        { outFormat: oracledb.OUT_FORMAT_OBJECT }
    );

    const allCharacters = allCharactersData.rows;

    let length = Object.keys(req.query).length;

    if (length === 1) {
        if (req.query.hasOwnProperty("name")) {
            const characterData = await connection.execute(
                `
                SELECT *
                FROM CHARACTER
                WHERE UPPER(FULL_NAME) LIKE '%' || UPPER(:name) || '%' OR NATIVE = :name
            `,
                {
                    name: req.query.name,
                },
                { outFormat: oracledb.OUT_FORMAT_OBJECT }
            );

            characters = characterData.rows;
        }
    }

    await connection.close();

    if(req.session.user) {
        if (!Object.keys(req.query).length) {
            res.render("search_character", {
                search: req.query,
                characters: allCharacters,
                isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
                userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
                username: req.session.user.USERNAME
            });
            } else {
                res.render("search_character", {
                    search: req.query,
                    characters,
                    isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
                    userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
                    username: req.session.user.USERNAME
                });
            }
    } else {
        res.redirect("/login")
    }
};

const searchCharacterControllerPOST = async (req, res) => {
    console.log("in the searchCharacterControllerPOST");
    console.log(req.url, req.method);
    console.log(req.body);

    const request = req.body;

    let str = "";

    if (request.name) {
        str += `name=${request.name}`;
    }

    str
        ? res.redirect(`/search/characters?${str}`)
        : res.redirect(`/search/characters`);
};

module.exports = {
    searchCharacterControllerGET,
    searchCharacterControllerPOST,
};
