const db = require('./index');

const getImages = (data, cb) => {
  const { id } = data;
  const queryStr = `SELECT * FROM images WHERE businessid=${id}`;
  db.pool.query(queryStr, (err, images) => {
    if (err) cb(err);
    else cb(null, images);
  });
};

module.exports = {
  getImages,
  // postImage,
  // updateImage,
  // deleteImage,
};
