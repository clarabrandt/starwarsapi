const express = require('express');
const router = express.Router();
const db = require('../db');


router.get('/search', (req, res) => {
  const { q, order } = req.query
  db.search(q, order)
    .then(result => {
      if (result.length >= 1) {
        return res.json({
          result
        })
      } else {
        return res.send('The force appears not to be with you. Please, choose a different search term.')
      }
    })

});



module.exports = router;
