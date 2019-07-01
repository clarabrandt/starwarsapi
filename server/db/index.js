const mysql = require('mysql');

const con = mysql.createConnection({
  host: "localhost",
  user: "user",
  password: "password",
  database: "starwarsapi"
});


con.connect(function (err) {
  if (err) throw err;
  con.query("SELECT * FROM films", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });
});

module.exports = con;