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

app.post("/add", async (req, res) => {
  try {
    let id = await knex("log_input")
      .insert(req.body)
      .then(function (id) {
        res.json({
          id: id[0],
        });
      })
      .catch(function (error) {
        res.send(error);
      });
  } catch (e) {
    console.log(e);
    next(e);
  }
});

app.post("/sop_infus", async (req, res) => {
  try {
    let dataPost = req.body;
    let id = dataPost.id;
    let data = dataPost.data;

    await knex("log_input")
      .where("id", id)
      .update({ jwb_pemasangan_infus: data })
      .then(function () {
        res.send(true);
      })
      .catch(function (error) {
        res.send(error);
      });
    res.send(dataPost.id);
  } catch (e) {
    console.log(e);
    next(e);
  }
});

app.post("/sop_luka", async (req, res) => {
  try {
    let dataPost = req.body;
    let id = dataPost.id;
    let data = dataPost.data;

    await knex("log_input")
      .where("id", id)
      .update({ jwb_perawatan_luka: data })
      .then(function () {
        res.send(true);
      })
      .catch(function (error) {
        res.send(error);
      });
    res.send(dataPost.id);
  } catch (e) {
    console.log(e);
    next(e);
  }
});

app.post("/sop_oksigen", async (req, res) => {
  try {
    let dataPost = req.body;
    let id = dataPost.id;
    let data = dataPost.data;

    await knex("log_input")
      .where("id", id)
      .update({ jwb_memberikan_oksigen: data })
      .then(function () {
        res.send(true);
      })
      .catch(function (error) {
        res.send(error);
      });
    res.send(dataPost.id);
  } catch (e) {
    console.log(e);
    next(e);
  }
});

app.post("/sop_luka_bakar", async (req, res) => {
  try {
    let dataPost = req.body;
    let id = dataPost.id;
    let data = dataPost.data;

    await knex("log_input")
      .where("id", id)
      .update({ jwb_penanganan_luka_bakar: data })
      .then(function () {
        res.send(true);
      })
      .catch(function (error) {
        res.send(error);
      });
    res.send(dataPost.id);
  } catch (e) {
    console.log(e);
    next(e);
  }
});

app.post("/sop_observasi", async (req, res) => {
  try {
    let dataPost = req.body;
    let id = dataPost.id;
    let data = dataPost.data;

    await knex("log_input")
      .where("id", id)
      .update({ jwb_pasien_gawat: data })
      .then(function () {
        res.send(true);
      })
      .catch(function (error) {
        res.send(error);
      });
    res.send(dataPost.id);
  } catch (e) {
    console.log(e);
    next(e);
  }
});

// Set Port
app.listen(3000, function () {
  console.log("Node app is running on port 3000");
});
// app.listen(3000, "192.168.1.27", function () {
//   console.log("Node app is running on port 3000");
// });

module.exports;
