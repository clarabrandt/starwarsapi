const mysql = require('mysql');
const express = require('express');
const router = express.Router();

const pool = mysql.createPool({
  connectionLimit: 50,
  host: "localhost",
  user: "user",
  password: "password",
  database: "starwarsapi",
  port: 3306
});

let filmsdb = {};

filmsdb.all = () => {
  return new Promise((resolve, reject) => {
    pool.query(`SELECT * FROM films`, (err, results) => {
      if (err) {
        return reject(err);
      }
      return resolve(results)
    })
  })
}



module.exports = filmsdb;