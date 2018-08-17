const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const db = require('../database/postgreSQL/index');
const dbHelp = require('../database/postgreSQL/dbhelp');

const app = express();
const port = 3001;

app.use(bodyParser.json());

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header(
    'Access-Control-Allow-Headers',
    'Origin, X-Requested-With, Content-Type, Accept'
  );
  next();
});

app.use('/:id/', express.static(path.join(__dirname, '/../client/dist')));

app.get('/businesses/:businessId/images', (req, res) => {
  dbHelp.getImages({ id: req.params.businessId }, (err, images) => {
    if (err) res.json(err);
    else res.json(images.rows);
  });
});

app.post('/businesses/:businessId/images', (req, res) => {
  // console.log(req.body);
  dbHelp.postImage(
    { id: req.params.businessId, body: req.body },
    (err, data) => {
      if (err) {
        res.status(400).send(err);
      } else {
        res.send('SENT');
      }
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

app.delete('/businesses/:businessId/images', (req, res) => {
  const { businessId } = req.params;
});

app.listen(port, () => {
  console.log(`listening on port ${port}`);
});
