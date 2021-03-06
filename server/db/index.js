const mysql = require('mysql');
const express = require('express');


const pool = mysql.createPool({
  connectionLimit: 50,
  host: "localhost",
  user: "user",
  password: "password",
  database: "starwarsapi",
  port: 3306
});

let db = {};


db.search = (search_term, order) => {
  return new Promise((resolve, reject) => {
    pool.query(`SELECT people.name, people.height
                  FROM people, films, people_in_film 
                  WHERE people_in_film.film = films.id 
                  AND people_in_film.people = people.id
                  AND title LIKE '%${search_term}%'
                  ORDER BY height ${order}`,
      (err, results) => {
        if (err) {
          return reject(err);
        }
        return resolve(results)
      })
  })
}


module.exports = db;
