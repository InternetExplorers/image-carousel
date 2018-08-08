
const getImages = (data, cb) => {
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
    images.businessId = ${businessId} AND
    users.id = images.ownerId;`;

  db.query(queryString, (err, result) => {
    if (err) cb(err);
    else cb(result);
  });
}

const postImage = (data, cb) => {
  const queryStr = `INSERT INTO users (ownerId, businessId, title, description, date, originalUrl, thumbnailUrl) VALUES (?, ?, ?, ?)`;
  const queryParams = [req.body.ownerId, businessId, req.body.title, req.body.description, req.body.date, req.body.originalUrl, req.body.thumbnailUrl];
  db.query(queryStr, queryParams, (err, result) => {
    if (err) cb (err);
    else cb (data);
  });

};

const updateImage = (data, cb) => {
  const queryStr = `UPDATE images SET (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) = (?, ?, ?, ?, ?, ?, ?) WHERE images.id=${imageId}`;
  const queryParams = [req.body.ownerId, req.body.businessId, req.body.title, req.body.description, req.body.originalUrl, req.body.thumbnailUrl, req.body.date];
  db.query(queryStr, queryParams, (err, result) => {
    if (err) {
      cb (err);
    } else {
      cb (data);
    }
  });
}

const deleteImage = (data, cb) => {

}


export {
  getImages,
  postImage,
  updateImage,
  deleteImage,
}