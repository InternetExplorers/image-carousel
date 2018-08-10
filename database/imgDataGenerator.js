const fs = require('fs');
const faker = require('faker');

const randomNumber = (min = 0, max = 9) => Math.floor(Math.random() * (max - min + 1)) + min;

const images = (num) => `https://s3-us-west-1.amazonaws.com/sdcfoodphotos/Food+Images/PIcture${num}.jpg`;
// 2018-01-25

const date = `2018-${randomNumber(0,12)}-${randomNumber(0,31)}`;

const createImgs = () => {
  const headers = 'index,ownerId,businessId,title,description,date,url\n';
  let count = 0;
  while (count < 10000000) {
    let storage = ``;
    let chunkNum = 0;
    if (count === 0) {
      storage += headers;
    }
    while (chunkNum < 100000) {
      let url = images(randomNumber(0, 10));
      //idx
      storage += `${count},`;
      //owner id
      storage += `${randomNumber(0, 10000000)},`;
      //bus id
      storage += `${randomNumber(0, 10000000)},`;
      //color, title
      storage += `${faker.commerce.color()} ${faker.random.word()},`;
      //description
      storage += `${faker.lorem.word()} ${faker.lorem.word()} ${faker.lorem.word()},`;
      //original url
      storage += url;
      storage += ','
      //thumbnail url
      storage += url;
      storage += ','
      //date
      storage += `${date}`;
      storage += `\n`;
      chunkNum += 1;
      count += 1;
    }
    fs.appendFileSync(`fakeImgData/imgDataSample.csv`, storage);
  }
}

createImgs();
