const express = require('express')
const app = express();
const apiRouter = require('./server/routes')
// const mysql = require('mysql');


app.use(express.json());

app.use('api/films', apiRouter)


const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Listening on port ${port}`))