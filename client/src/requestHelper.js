import $ from 'jquery';

module.exports = {
  fetchImages: (businessId, callback) => {
    $.ajax({
      url: `http://ec2-54-153-124-199.us-west-1.compute.amazonaws.com/businesses/${businessId}/images`,
      method: 'GET',
      success: imageList => {
        callback(null, imageList);
      },
      error: err => {
        callback(err);
      },
    });
  },
};
