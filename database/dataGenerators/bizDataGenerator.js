const fs = require('fs');
const faker = require('faker');

const adj = [
  'Tasty',
  'Gorgeous',
  'Awesome',
  'Unbranded',
  'Handcrafted',
  'Small',
  'Incredible',
  'Ergonomic',
  'Refined',
  'Licensed',
];

const append = (data) => {
  const chunks = [];
  let prevIdx = 0;
  for (let j = 0; j <= data.length; j += 10000000) {
    chunks.push(data.slice(prevIdx, j).join('\n'));
    prevIdx = j;
  }
  const headers = 'businessName\n';
  fs.appendFileSync(`./fakeBizData/fakedata.csv`, headers + chunks);
};

const makeUniqueBusinesses = (rounds) => {
  const storage = [];
  let id = 1;
  const makeCombos = (counter, combo = []) => {
    if (!counter) {
      storage.push(combo.join(' '));
      id++;
    } else {
      for (let i = 0; i < adj.length; i += 1) {
        const element = adj[i];
        makeCombos(counter - 1, combo.concat(element));
      }
    }
  };
  makeCombos(rounds);
  append(storage);
};

makeUniqueBusinesses(7);