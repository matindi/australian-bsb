var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var urlencodedParser = bodyParser.urlencoded({ extended: false })
const Sequelize = require('sequelize');
 

const sequelize = new Sequelize('postgres://postgres@db:5432/AustralianBsb_Db');

sequelize
    .authenticate()
    .then(() => {
        console.log('Connection has been established successfully.');

        app.get('/', function (req, res) {
            res.json({
                response : "Successfully connected"
            });
        });

        app.get('/bsbDirectory', function (req, res) {
            sequelize.query("SELECT * from BsbDirectory").spread((results, metadata) => {
                // Results will be an empty array and metadata will contain the number of affected rows.
                // console.log(results)
                res.json({
                    response : results
                });
              }).catch(function (err) {
                // handle error;
                res.send(JSON.stringify(err.toString()))
              });
        });

        app.listen(3000);

    })
    .catch(err => {
        console.error('Unable to connect to the database:', err);
    });



