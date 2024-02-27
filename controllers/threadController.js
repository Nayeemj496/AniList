const threadControllerGET = async (req, res) => {
    console.log(req.url, req.method)
    console.log("in the threadControllerGET")
    console.log(req.query)

    const obj = req.query

    let length = Object.keys(obj).length

    if(length == 0) {
        res.render("threads")
    }
    else {
        res.render("threads")
    }
}


module.exports = {
    threadControllerGET
}