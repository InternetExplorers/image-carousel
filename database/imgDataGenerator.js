const fs = require('fs');
const faker = require('faker');

const randomNumber = (min = 0, max = 9) => Math.floor(Math.random() * (max - min + 1)) + min;

function randomDate(start, end) {
  var d = new Date(start.getTime() + Math.random() * (end.getTime() - start.getTime())),
    month = '' + (d.getMonth() + 1),
    day = '' + d.getDate(),
    year = d.getFullYear();

  if (month.length < 2) month = '0' + month;
  if (day.length < 2) day = '0' + day;

  return [year, month, day].join('-');
}

const images = (num) => `https://s3-us-west-1.amazonaws.com/sdcfoodphotos/Food+Images/PIcture${num}.jpg`;

const createImgs = () => {
  const headers = 'index,userId,businessId,title,description,url,thumbnail,date\n';
  let count = 0;
  let picsPerBiz = 1;
  let numReset = 0;

  const assignImages = (currentCount) => {
    if (currentCount <= 10000000) {
      return currentCount;
    } else {
      if (numReset === 10000000 && picsPerBiz < 3) {
        numReset = 0;
        picsPerBiz++;
      }
      if (numReset < 10000000 && picsPerBiz < 3) {
        numReset++;
        return numReset;
      }
      if (picsPerBiz === 3) {
        return randomNumber(1, 10000000);
      }
    }
  }

  while (count < 50000000) {
    let storage = ``;
    let chunkNum = 0;  
    if (count === 0) {
      storage += headers;
      count++
    }
    while (chunkNum < 200000) {
      let url = images(randomNumber(1, 1001));
      let date = randomDate(new Date(2018, 0), new Date(2018, 12));
      let currentId = assignImages(count);
      //idx
      storage += `${count},`;
      //user id
      storage += `${currentId},`;
      //bus id
      storage += `${currentId},`;
      //color, title
      storage += `${faker.commerce.color()} ${faker.commerce.productName()},`;
      //description
      storage += `${faker.lorem.word()} ${faker.lorem.word()} ${faker.lorem.word()},`;
      //original url
      storage += url + ',';
      //thumbnail url
      storage += url + ',';
      //date
      storage += `${date}`;
      storage += `\n`
      chunkNum += 1;
      count += 1;
    }
    fs.appendFileSync(`fakeImgData/fakeImgData.csv`, storage);
  }
}

createImgs();
