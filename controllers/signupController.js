const bcrypt = require("bcrypt")
const utility = require("./utilityFunction")


const signupControllerGET = async (req, res) => {
    console.log("in the signupControllerGET")
    console.log(req.url, req.method)
    res.render("signup")
}

const signupControllerPOST = async (req, res) => {
    console.log("in the signupControllerPOST")
    console.log(req.url, req.method)
    console.log(req.body)

    const { username, email, password, confirmPassword } = req.body

    console.log(password === confirmPassword)

    if(password != confirmPassword) {
        console.log("please correctly confirm the password")
        res.redirect("/signup")
    } else {
        let exists = (await utility.getuser(username)).length == 0 ? false : true
        if (exists) {
            res.redirect('/signup')
            console.log('User exists')
        }
        else {
            const hashpassword = await bcrypt.hash(password, 10)
            await utility.insertuserintoDB(username, email, hashpassword)
            console.log('insertion done')
        }
    }

    res.render("login")
}

module.exports = { signupControllerGET, signupControllerPOST }