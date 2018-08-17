const mysql = require("mysql");

const connection = mysql.createConnection({
  user: "root",
  database: "yelp",
});

connection.connect();

module.exports = connection;
