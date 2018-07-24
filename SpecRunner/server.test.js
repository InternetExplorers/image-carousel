const request = require('request');

describe('Server database connection test', () => {
  it('Allow get request on images API', (done) => {
    request('http://localhost:3001/businesses/1/images', (error, response, body) => {
      const image = JSON.parse(body);
      expect(image[0].title).toEqual('raw shrimp');
      expect(image[0].description).toEqual('this is bad');
      done();
    });
  });
});
