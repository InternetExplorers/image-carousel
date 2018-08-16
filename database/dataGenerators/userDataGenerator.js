const fs = require('fs');
const faker = require('faker');

const randomNumber = (min = 0, max = 9) => Math.floor(Math.random() * (max - min + 1)) + min;

const createUsers = () => {
  let count = 0;
  while (count < 10000000) {
    let storage = '';
    let chunkNum = 0;
    while (chunkNum < 100000) {
      if (count === 0) {
        storage += `profileName,profileUrl,reviewCount,friendCount\n`
      }
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
  // console.log(count);
}

createUsers();
