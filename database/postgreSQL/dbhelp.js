const db = require('./index');

const getImages = (data, cb) => {
  const { id } = data;
  const queryStr = `SELECT * FROM images WHERE businessid=$1`;
  const params = [+id];
  db.pool.query(queryStr, params, (err, images) => {
    if (err) cb(err);
    else cb(null, images);
  });
};

const postImage = (data, cb) => {
  const { id, body } = data;
  const queryStr = `
  INSERT INTO images 
  (userid, businessid, title, description, url, thumbnail, date) 
  VALUES ($1,$2,$3,$4,$5,$6,$7)`;
  const queryParams = [
    +body.userid,
    +id,
    body.title,
    body.description,
    body.url,
    body.thumbnail,
    body.date,
  ];
  db.pool.query(queryStr, queryParams, (err, sentImage) => {
    if (err) cb(err);
    else cb(null, sentImage);
  });
};

const updateImage = (data, cb) => {
  const { businessid, imageid, body } = data;
  const queryStr = `
  UPDATE images SET 
    userid=$1,
    businessid=$2,
    title=$3, 
    description=$4, 
    url=$5, 
    thumbnail=$6,
    date=$7
  WHERE id=$8`;
  const queryParams = [
    +body.userid,
    +businessid,
    body.title,
    body.description,
    body.url,
    body.thumbnail,
    body.date,
    +imageid,
  ];
  db.pool.query(queryStr, queryParams, (err, update) => {
    if (err) cb(err);
    else cb(null, update);
  });
};

const deleteImage = (data, cb) => {
  const { imageid } = data;
  const queryStr = `DELETE FROM images WHERE id=$1`;
  const queryParams = [imageid];

  db.pool.query(queryStr, queryParams, (err, deleted) => {
    if (err) cb(err);
    else cb(null, deleted);
  });
};

module.exports = {
  getImages,
  postImage,
  updateImage,
  deleteImage,
};
