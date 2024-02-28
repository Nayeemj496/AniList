const adminControllerGET = async (req, res) => {
    console.log("in the adminControllerAddGET")
    console.log(req.url, req.method)

    if(req.session.user) {
        res.render("admin", {
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        })
    } else {
        res.redirect("/login")
    }
}

const adminControllerAddPOST = async (req, res) => {
    console.log("in the adminControllerAddPOST")
    console.log(req.url, req.method)
    console.log(req.body)

    res.redirect("/admin/add?status=sucessful")
}


module.exports = { adminControllerGET, }