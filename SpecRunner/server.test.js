const mysql = require('mysql');
const request = require('request');
// const server = require('../server/index');

// test('adds 2 to 1 to equal 3', () => {
//   expect(server.test(1)).toBe(3);
// });

describe('Server database connection test', () => {
  it('Allow get request on images API', (done) => {
    request('http://localhost:3001/businesses/1/images', (error, response, body) => {
      const image = JSON.parse(body);
      expect(image[0].title).toEqual('food');
      expect(image[0].description).toEqual('this is good');
      done();
    });
  });
});
