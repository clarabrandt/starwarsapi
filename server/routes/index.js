const express = require('express');
const router = express.Router();
const filmsdb = require('../db')

router.get('/', async (req, res, next) => {
  try {
    let results = await filmsdb.search();
    res.json(results)
  } catch (err) {
    console.log(err)
    res.sendStatus(500)
  }
});

module.exports = router;