const express = require('express')
const app = express();
const mysql = require('mysql');


app.get('/', (req, res) => res.send('hello, world'));

app.get('/api/films', (req, res) => {
  res.send([1, 2, 3])
})


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


app.listen('3000', () => {
  console.log('Server started on port 3000')
})