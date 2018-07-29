import $ from 'jquery';

module.exports = {
  fetchImages: (businessId, callback) => {
    $.ajax({
      url: `http://localhost:3001/businesses/${businessId}/images`,
      method: 'GET',
      success: (imageList) => {
        callback(null, imageList);
      },
      error: (err) => {
        callback(err);
      },
    });
  },
};
