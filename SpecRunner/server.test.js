const server = require('../server/index');

test('adds 2 to 1 to equal 3', () => {
  expect(server.test(1)).toBe(3);
});
