const homeController = async (req, res) => {
    console.log("in the homeController")
    console.log(req.url, req.method)
    res.render("homepage")
}

module.exports = homeController