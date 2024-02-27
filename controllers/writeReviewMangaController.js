const { restart } = require("nodemon")
const connect = require("../controllers/connect")

const writeReviewMangaControllerGET = async (req, res) => {
  console.log("in the writeReviewMangaControllerGET")
  console.log(req.url, req.method)
  console.log(req.params)

  if(req.session.user) {
      res.render("write_review_manga", {
        id: req.params.id,
        isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
        userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
        username: req.session.user.USERNAME
      });
  } else {
    res.redirect("/login")
  }
}

const writeReviewMangaControllerPOST = async (req, res) => {
  console.log("in the writeReviewMangaControllerPOST")
  console.log(req.url, req.method)

  console.log(req.session.manga)
  console.log(req.session.user)

  if (req.session.user) {

    const connection = await connect()

    await connection.execute(`
        INSERT INTO REVIEW_MANGA(REVIEW_MANGA_TEXT, MANGA_ID, USER_ID) VALUES (
            :review, :mangaid, :userid
        )
    `, {
      review: req.body.review,
      mangaid: Number(req.session.manga.id),
      userid: Number(req.session.user.USER_ID)
    })

    res.redirect(
      `/manga/${Number(req.session.manga.id)}/${req.session.manga.name}`
    );
  } else {
    res.redirect("/login");
  }
}

module.exports = {
  writeReviewMangaControllerGET,
  writeReviewMangaControllerPOST
}