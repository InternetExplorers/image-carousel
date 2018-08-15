CREATE KEYSPACE IF NOT EXISTS yelp WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 3};

USE yelp;

-- DROP TABLE IF EXISTS businesses;
-- CREATE TABLE IF NOT EXISTS businesses (
--   id int,
--   name text,
--   PRIMARY KEY (id)
-- );

-- DROP TABLE IF EXISTS users;
-- CREATE TABLE IF NOT EXISTS users (
--   id int,
--   profilename text,
--   profileurl text,
--   reviewcount int,
--   friendcount int,
--   PRIMARY KEY (id)
-- );

-- DROP TABLE IF EXISTS images;
-- CREATE TABLE IF NOT EXISTS images (
--   id int,
--   userId int,
--   businessId int,
--   title text,
--   description text,
--   url text,
--   thumbnail text,
--   date DATE,
--   PRIMARY KEY (id)
-- );

-- CREATE TABLE allImages (
--   bizname TEXT,
--   profilename TEXT,
--   profileurl TEXT,
--   reviewcount INT,
--   friendcount INT,
--   imageid INT,
--   userid INT,
--   bizid INT,
--   title TEXT,
--   description TEXT,
--   url TEXT,
--   thumbnail TEXT,
--   date date,
--   UUID uuid,
--   PRIMARY KEY (bizname, profilename)
-- );

CREATE TABLE imagesByBusiness (
  bizid int,
  userid int,
  imageid int,
  date date,
  uuid uuid,
  bizname text,
  title text,
  description text,
  url text,
  thumbnail text,
  profilename text,
  PRIMARY KEY (( bizid, userid, imageid), date) 
);


-- COPY allImages (bizname,profilename,profileurl,reviewcount,friendcount,imageid,userid,bizid,title,description,url,thumbnail,date,UUID)
-- FROM '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/finalDataWithU.csv' with DELIMITER = ',' and header = 'true';

-- (name) 
-- COPY businesses FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/fakeBizData/data.csv' with DELIMITER = ',' and header = 'true';

--(id, profilename, profileurl, reviewcount, friendcount) 
-- COPY users (id, profilename, profileurl, reviewcount, friendcount) FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/fakeUserData/UserData.csv' with DELIMITER = ',' and header = 'true';

--(title, description, url, thumbnail, date)
-- COPY images (id, userid, businessid, title, description, url, thumbnail, date) FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/fakeImgData/fakeImgData.csv' with DELIMITER = ',' and header = 'true';

-- COPY images FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/cassandra/allData.csv'

-- copy yelp.allImages (imageid, bizid, userid, date, uuid, bizname, title, description, url, thumbnail, profilename) to '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/imagesbyBiz.csv'

copy yelp.imagesByBusiness (imageid, bizid, userid, date, uuid, bizname, title, description, url, thumbnail, profilename) FROM '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/imagesbyBiz.csv';