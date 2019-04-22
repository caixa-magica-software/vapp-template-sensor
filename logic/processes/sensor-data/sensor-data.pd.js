var express = require('express');


module.exports = (app) => {

  /* POST check rule */
  app.get('/sensor-data', (req, res) => {
    res.json({
      a: 1
    });
  });

}