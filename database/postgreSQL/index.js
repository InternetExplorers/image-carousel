const { Pool, Client } = require('pg');

const connectionString = 'postgres://michaelchan:PASSWORD@localhost:5432/yelp';

const pool = new Pool({
  connectionString: connectionString,
  // host: 'localhost',
  // user: 'root',
  // database: 'yelp',
  // port: '5432',
});

const client = new Client({
  connectionString: connectionString,
});
client.connect();

// pool.query('SELECT * FROM images WHERE businessid=5', (err, res) => {
//   if (err) console.log(err);
//   else console.log(res.rows);
//   pool.end();
// });

// client.query('SELECT * FROM images WHERE businessid=5', (err, res) => {
// console.log(err, res);
// if (err) console.log(err);
// else console.log(res.rows);
// });

module.exports = {
  pool,
  client,
};
