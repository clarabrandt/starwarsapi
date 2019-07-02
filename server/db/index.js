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




module.exports = filmsdb;