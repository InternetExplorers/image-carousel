const newrelic = require('newrelic');
const path = require('path');
const cluster = require('cluster');
const express = require('express');
const redis = require('redis');
const dbHelp = require('../database/postgreSQL/dbhelp');

if (cluster.isMaster) {
  const numCPUs = require('os').cpus().length;
  for (let i = 0; i < numCPUs; i++) {
    cluster.fork();
  }
  cluster.on('exit', function(worker, code, signal) {
    console.log(
      'Worker ' +
        worker.process.pid +
        ' died with code: ' +
        code +
        ', and signal: ' +
        signal
    );
    cluster.fork();
  });
} else {
  const app = express();
  const port = 3001;

  app.use(express.json());

  const client = redis.createClient();
  // client.on('error', err => {
  //   console.log('Error', err);
  // });

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
    client.get(+req.params.businessId, (err, result) => {
      // if (err) res.send(err);
      if (result) {
        console.log(result);
        res.send(result);
      } else {
        dbHelp.getImages({ id: req.params.businessId }, (err, images) => {
          if (err) {
            res.json(err);
          } else {
            client.setex(
              +req.params.businessId,
              3600,
              JSON.stringify(images.rows)
            );
            res.json(images.rows);
          }
        });
      }
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
  // console.log('Worker %d running!', cluster.worker.id);
  app.listen(port, () => {
    console.log(`listening on port ${port}`);
  });
}
