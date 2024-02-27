const express = require("express");
const cors = require("cors");
const session = require("express-session");
const path = require("path");
const routers = require("./routes/web");

const PORT = process.env.PORT || 8080;

const server = express();

server.set("view engine", "ejs");
server.use(express.static(path.join(__dirname, "public")));
server.use(
  session({
    secret: "thisissecret!",
    resave: false,
    saveUninitialized: true,
  })
);
server.use(cors());
server.use(express.json());
server.use(express.urlencoded({ extended: true }));



server.use("/", routers.webRouter);
server.use("/search", routers.searchRouter);
// work in progress
server.use("/admin", routers.adminRouter);

server.listen(PORT, () => {
  console.log(`Server is running on PORT ${PORT}`);
});
