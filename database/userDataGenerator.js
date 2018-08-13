const fs = require('fs');
const faker = require('faker');

const randomNumber = (min = 0, max = 9) => Math.floor(Math.random() * (max - min + 1)) + min;

const append = (data) => {
  const chunks = [];
  let prevIdx = 0;
  for (let j = 0; j <= data.length; j += 10000000) {
    chunks.push(data.slice(prevIdx, j).join('\n'));
    prevIdx = j;
  }
  for (let i = 1; i <= 10; i += 1) {
    const headers = 'index, business';
    fs.appendFileSync(`./fakeUserData/data${i}.csv`, headers + chunks[i]);
  }
};

const createUsers = () => {
  let count = 0;
  while (count < 10000000) {
    let storage = '';
    let chunkNum = 0;
    while (chunkNum < 100000) {
      if (count === 0) {
        storage += `index,profileName,profileUrl,reviewCount,friendCount\n`
      }
      //idx
      storage += `${count},`;
      //profileName
      storage += `${faker.internet.userName()},`;
      //profileUrl
      storage += `${faker.internet.url()},`;
      //profileReviewCount
      storage += `${randomNumber(1,50)},`;
      //profileFriendCount
      storage += `${randomNumber(1,500)}`;
      storage += '\n';
      chunkNum++;
      count++
    }
    fs.appendFileSync(`fakeUserData/userData.csv`, storage);
  }
  console.log(count);
}

// createUsers();
