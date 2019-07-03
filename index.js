const express = require('express')
const app = express();
const apiRouter = require('./server/routes')
const bodyParser = require('body-parser');


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: true
}));

app.use(express.json());

app.use('/api', apiRouter)




const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Listening on port ${port}`))
