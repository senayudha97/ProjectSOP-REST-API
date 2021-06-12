var express = require("express");
var app = express();
var bodyParser = require("body-parser");
var mysql = require("mysql");

app.use(bodyParser.json());
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);

// Default Route
app.get("/", function (reg, res) {
  return res.send({ error: true, message: "Halloo" });
});

// Configure DB Connection
var dbConn = mysql.createConnection({
  host: "localhost",
  port: "3307",
  user: "root",
  password: "",
  database: "sop",
});

// DB Connect
dbConn.connect();

// Set Port

app.listen(3000, function () {
  console.log("Node app is running on port 3000");
});

module.exports;
