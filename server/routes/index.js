const express = require('express');
const router = express.Router();
const db = require('../db');


router.get('/search', (req, res) => {
  const { q, order } = req.query
  db.search(q, order)
    .then(result => res.json({
      result
    }));
});


module.exports = router;
