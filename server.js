import * as dotenv from "dotenv";
dotenv.config();

import express from "express";
import cors from "cors";
import mysql from "mysql";

const app = express();
app.use(cors());
app.use(express.json());

const pool = mysql.createPool({
  connectionLimit: 10,
  host: process.env.MYSQL_HOST,
  port: process.env.MYSQL_PORT,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DB,
});

app.get("/categories", (req, res) => {
  pool.getConnection((err, connection) => {
    if (err) throw err;

    console.log(`connected as id ${connection.threadId}`);

    connection.query("SELECT * from Categories", (err, rows) => {
      connection.release();

      if (!err) {
        res.send(rows);
      } else {
        console.log(err);
      }
    });
  });
});

app.get("/products", (req, res) => {
  pool.getConnection((err, connection) => {
    if (err) throw err;

    console.log(`connected as id ${connection.threadId}`);

    connection.query("SELECT * from Products", (err, rows) => {
      connection.release();

      if (!err) {
        res.send(rows);
      } else {
        console.log(err);
      }
    });
  });
});

app.get("/featured", (req, res) => {
  pool.getConnection((err, connection) => {
    if (err) throw err;

    console.log(`connected as id ${connection.threadId}`);

    connection.query("SELECT * from Featured", (err, rows) => {
      connection.release();

      if (!err) {
        res.send(rows);
      } else {
        console.log(err);
      }
    });
  });
});

const port = process.env.PORT || 8080;
app.listen(port, () => console.log(`Listening on port ${port}`));
