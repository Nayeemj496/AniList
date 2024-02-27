const connect = require("../controllers/connect")

const test = async (req, res) => {
    console.log(req.url, req.method)
    console.log("in the test method")

    res.render("review_anime")
}

const testReview = async (req, res) => {
    console.log(req.url, req.method)
    console.log("in the review test method")
    res.render("reviews")
}

const home = async (req, res) => {
    console.log(req.url, req.method)
    console.log("in the home method")
    res.render("user_homepage")
}


const profile = async (req, res) => {
    console.log(req.url, req.method)
    console.log("in the profile section")

    res.render("profile", {
        role: "ADMIN"
    })
}


const animeList = async (req, res) => {
    console.log(req.url, req.method)
    console.log("in the animeList")

    res.render("animeList", {
        role: "ADMIN"
    })
}


module.exports = {
    test,
    testReview,
    home,
    profile,
    animeList
}