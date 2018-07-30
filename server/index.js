const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const db = require('../database/index');

const app = express();
const port = 3001;

app.use(bodyParser.json());
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

app.use(express.static(path.join(__dirname, '/../client/dist')));

app.get('/businesses/:businessId/images', (req, res) => {
  const { businessId } = req.params;
  const queryString = `SELECT businesses.name,
    users.profileName,
    users.profileUrl,
    users.profileReviewCount,
    users.profileFriendCount,
    images.id,
    images.title,
    images.description,
    images.date,
    images.originalUrl,
    images.thumbnailUrl
    from businesses, images, users where businesses.id = ${businessId} AND
    images.businessId =  ${businessId} AND
    users.id = images.ownerId;`;

  db.query(queryString, (err, result) => {
    if (err) {
      res.send(err);
    } else {
      res.send(result);
    }
  });
});

app.listen(port, () => {
  console.log(`listening on port ${port}`);
});
