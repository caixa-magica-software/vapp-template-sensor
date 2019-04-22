var express = require('express');


module.exports = (app) => {

    /* POST check rule */
    app.get('/dump-data', (req, res) => {
        res.json({
            a: 1
        });
    });

}