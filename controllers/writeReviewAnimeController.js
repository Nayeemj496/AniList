const connect = require("../controllers/connect");

const writeReviewAnimeControllerGET = async (req, res) => {
    console.log("in the writeReviewAnimeControllerGET");
    console.log(req.url, req.method);
    console.log(req.params);

    console.log(req.session.anime);

    if(req.session.user) {
        res.render("write_review_anime", {
            id: req.params.id,
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        });
    } else {
        res.redirect("/login")
    }
    
};

const writeReviewAnimeControllerPOST = async (req, res) => {
    console.log("in the writeReviewAnimeControllerPOST");
    console.log(req.url, req.method);
    console.log(req.body);

    console.log(req.session.anime);

    if (req.session.user) {
        const connection = await connect();

        console.log(req.session.anime.id);
        console.log(req.session.user);

        await connection.execute(`
        INSERT INTO REVIEW_ANIME(REVIEW_ANIME_TEXT, ANIME_ID, USER_ID) VALUES (
            :review, :animeid, :userid
        )
    `, {
            review: req.body.review,
            animeid: Number(req.session.anime.id),
            userid: Number(req.session.user.USER_ID)
        })

        await connection.close();

        res.redirect(
            `/anime/${Number(req.session.anime.id)}/${req.session.anime.name}`
        );
    } else {
        res.redirect("/login");
    }
};

module.exports = {
    writeReviewAnimeControllerGET,
    writeReviewAnimeControllerPOST,
};
