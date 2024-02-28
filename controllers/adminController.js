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

const adminAddAnimeControllerGET = async (req, res) => {
    console.log("in the adminAddAnimeControllerGET")
    console.log(req.url, req.method)

    if(req.session.user) {
        res.render("admin_add", {
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        })
    } else {
        res.redirect("/login")
    }
}

const adminAddAnimeControllerPOST = async (req, res) => {
    console.log("in the adminAddAnimeControllerPOST")
    console.log(req.url, req.method)
}

const adminAddMangaControllerGET = async (req, res) => {
    console.log("in the adminAddMangaControllerGET");
    console.log(req.url, req.method);

    if(req.session.user) {
        res.render("admin_add", {
            isAdmin: req.session.user.ROLE === "ADMIN" ? true : false,
            userimage: req.session.user.USER_IMAGE || "/images/photos/user.png",
            username: req.session.user.USERNAME
        })
    } else {
        res.redirect("/login")
    }
};

const adminAddMangaControllerPOST = async (req, res) => {
  console.log("in the adminAddMangaControllerPOST");
  console.log(req.url, req.method);
};

const adminUpdateAnimeControllerGET = async (req, res) => {
    console.log("in the adminUpdateAnimeControllerGET")
    console.log(req.url, req.method)
}

const adminUpdateAnimeControllerPOST = async (req, res) => {
    console.log("in the adminUpdateAnimeControllerPOST")
    console.log(req.url, req.method)
};

const adminUpdateMangaControllerGET = async (req, res) => {
  console.log("in the adminUpdateMangaControllerGET");
  console.log(req.url, req.method);
};

const adminUpdateMangaControllerPOST = async (req, res) => {
  console.log("in the adminUpdateMangaControllerPOST");
  console.log(req.url, req.method);
};


const adminDeleteAnimeControllerGET = async (req, res) => {
    console.log("in the adminDeleteAnimeControllerGET")
    console.log(req.url, req.method)
}

const adminDeleteAnimeControllerPOST = async (req, res) => {
    console.log("in the adminDeleteAnimeControllerPOST")
    console.log(req.url, req.method)
}

const adminDeleteMangaControllerGET = async (req, res) => {
  console.log("in the adminDeleteMangaControllerGET");
  console.log(req.url, req.method);
};

const adminDeleteMangaControllerPOST = async (req, res) => {
  console.log("in the adminDeleteMangaControllerPOST");
  console.log(req.url, req.method);
};

module.exports = {
    adminControllerGET,
    adminAddAnimeControllerGET,
    adminAddAnimeControllerPOST,
    adminAddMangaControllerGET,
    adminAddMangaControllerPOST,
    adminUpdateAnimeControllerGET,
    adminUpdateAnimeControllerPOST,
    adminUpdateMangaControllerGET,
    adminUpdateMangaControllerPOST,
    adminDeleteAnimeControllerGET,
    adminDeleteAnimeControllerPOST,
    adminDeleteMangaControllerGET,
    adminDeleteMangaControllerPOST,
}