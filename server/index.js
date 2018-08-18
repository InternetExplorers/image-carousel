const newrelic = require('newrelic');
const express = require('express');
const path = require('path');
const dbHelp = require('../database/postgreSQL/dbhelp');
const app = express();
const port = 3001;

app.use(express.json());

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header(
    'Access-Control-Allow-Headers',
    'Origin, X-Requested-With, Content-Type, Accept'
  );
  next();
});

app.use('/:id', express.static(path.join(__dirname, '/../client/dist')));

app.get('/businesses/:businessId/images', (req, res) => {
  dbHelp.getImages({ id: req.params.businessId }, (err, images) => {
    if (err) res.json(err);
    else res.send(images.rows);
  });
});

app.post('/businesses/:businessId/images', (req, res) => {
  dbHelp.postImage(
    { id: req.params.businessId, body: req.body },
    (err, data) => {
      if (err) res.json(err);
      else res.json('SENT');
    }
  );
});

app.put('/businesses/:businessid/images/:imageid', (req, res) => {
  const { businessid, imageid } = req.params;
  dbHelp.updateImage(
    { businessid: businessid, imageid: imageid, body: req.body },
    (err, data) => {
      if (err) res.json(err);
      else res.json('UPDATED');
    }
  );
});

app.delete('/businesses/:businessId/images/:imageid', (req, res) => {
  const { businessid, imageid } = req.params;
  dbHelp.deleteImage(
    { businessid: businessid, imageid: imageid },
    (err, data) => {
      if (err) res.json(err);
      else res.json('DELETED');
    }
  );
});

app.listen(port, () => {
  console.log(`listening on port ${port}`);
});
