const bcrypt = require("bcrypt");
const utility = require("./utilityFunction");

const loginControllerGET = async (req, res) => {
    console.log("int the loginControllerGET");
    console.log(req.url, req.method);
    res.render("login");
};

const loginControllerPOST = async (req, res) => {
    console.log("in the loginControllerPOST");
    console.log(req.url, req.method);
    console.log(req.body);

    const { username, password } = req.body;

    let sql = `
        SELECT *
        FROM USERR
        WHERE USERNAME = :username
    `;

    const result = await utility.executesql(sql, [username]);

    if (result.rows.length > 0) {
        const gotpass = result.rows[0].PASSWORDD;
        const passwordMatch = await bcrypt.compare(password, gotpass);
        if (passwordMatch) {
            console.log("password matched");

            req.session.user = result.rows[0];

            res.redirect("/home");
        } else {
            console.log("password didn't match");
            res.redirect("/login"); // changed here
        }
    } else {
        res.redirect("/login"); // changed here
    }
};

const logoutControllerGET = async (req, res) => {
    console.log("in the logoutControllerGET");
    console.log(req.url, req.method);

    req.session.destroy();

    res.render("homepage");
};

module.exports = {
    loginControllerGET,
    loginControllerPOST,
    logoutControllerGET,
};
