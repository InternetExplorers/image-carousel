const db = require('./index');

const getImages = (data, cb) => {
  const { id } = data;
  const queryStr = `SELECT * FROM images WHERE businessid=${id}`;
  db.pool.query(queryStr, (err, images) => {
    if (err) cb(err);
    else cb(null, images);
  });
};

const postImage = (data, cb) => {
  const { id, body } = data;
  const queryStr = `INSERT INTO images (userid, businessid, title, description, url, thumbnail, date) VALUES (?,?,?,?,?,?,?)`;
  // console.log('data', data);
  const queryParams = [
    body.userid,
    +id,
    body.title,
    body.description,
    body.url,
    body.thumbnail,
    body.date,
  ];
  console.log(queryParams);
  db.pool.query(queryStr, queryParams, (err, sentImage) => {
    if (err) cb(err);
    else cb(null, sentImage);
  });
};

module.exports = {
  getImages,
  postImage,
  // updateImage,
  // deleteImage,
};
