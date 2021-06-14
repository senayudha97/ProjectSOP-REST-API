const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const mysql = require("mysql");
const knex = require("knex")({
  client: "mysql",
  connection: {
    host: "127.0.0.1",
    port: "3307",
    user: "root",
    password: "",
    database: "sop",
  },
});

app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);
app.use(
  bodyParser.json({
    limit: "8mb",
  })
);
app.get("/", (req, res) => {
  res.send("Hello");
});

app.get("/data", async (req, res) => {
  try {
    let data = await knex("m_sop_luka_bakar");
    res.json(data);
  } catch (e) {
    console.log(e);
  }
});

app.post("/add", (req, res) => {
  try {
    knex("log_input")
      .insert(req.body)
      .then(function () {
        res.send("BERHASIL");
      })
      .catch(function (error) {
        res.send(error);
      });
  } catch (e) {
    console.log(e);
    next(e);
  }
});

// Set Port
app.listen(3000, "192.168.1.11", function () {
  console.log("Node app is running on port 3000");
});

module.exports;
