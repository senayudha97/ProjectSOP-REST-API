const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const mysql = require("mysql");

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
const dbConn = mysql.createConnection({
  host: "localhost",
  port: "3307",
  user: "root",
  password: "",
  database: "sop",
});

// DB Connect
dbConn.connect();

// Menampilkan data all user
app.get("/data", function (req, res) {
  dbConn.query(
    "SELECT * FROM m_sop_luka_bakar",
    function (error, results, fields) {
      if (error) throw error;
      return res.send({
        error: false,
        data: results,
        message: "List data m_sop_luka_bakar.",
      });
    }
  );
});

// Set Port

app.listen(3000, function () {
  console.log("Node app is running on port 3000");
});

module.exports;
