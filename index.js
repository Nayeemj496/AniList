const http = require("http");
const express = require("express");
const cors = require("cors");
const session = require("express-session");
const path = require("path");
const routers = require("./routes/web");
const {Server} = require("socket.io")

const PORT = process.env.PORT || 8080;

const app = express();

app.set("view engine", "ejs");
app.use(express.static(path.join(__dirname, "public")));
app.use(
  session({
    secret: "thisissecret!",
    resave: false,
    saveUninitialized: true,
  })
);
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));


const server = http.createServer(app);

const io = new Server(server);

io.on("connection", (clientSocket) => {
  console.log("A new user is connected", clientSocket.id);
});

app.use((req, res, next) => {
  console.log("in the middleware")
  req.io = io
  next()
})
app.use("/", routers.webRouter);
app.use("/search", routers.searchRouter);
app.use("/admin", routers.adminRouter);

server.listen(PORT, () => {
  console.log(`Server is running on PORT ${PORT}`)
})

