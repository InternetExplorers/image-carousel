const { Pool, Client } = require('pg');

const connectionString =
  'postgres://power_user:poweruserpassword@ec2-54-153-79-209.us-west-1.compute.amazonaws.com:5432/yelp';

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

module.exports = {
  pool,
  client,
};
