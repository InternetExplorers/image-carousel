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
-- drop table yelp.imagesbybusiness;

-- CREATE TABLE imagesByBusiness (
--   bizid int,
--   userid int,
--   uuid uuid,
--   imageid int,
--   date date,
--   bizname text,
--   profilename text,
--   title text,
--   description text,
--   url text,
--   thumbnail text,
--   PRIMARY KEY (bizid)
-- );

CREATE TABLE imagesByBiz_User (
  bizid int,
  userid int,
  uuid uuid,
  imageid int,
  date date,
  bizname text,
  profilename text,
  title text,
  description text,
  url text,
  PRIMARY KEY (bizid, userid)
);

-- COPY allImages (bizname,profilename,profileurl,reviewcount,friendcount,imageid,userid,bizid,title,description,url,thumbnail,date,UUID)
-- FROM '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/finalDataWithU.csv' with DELIMITER = ',' and header = 'true';

-- COPY businesses FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/fakeBizData/data.csv' with DELIMITER = ',' and header = 'true';

-- COPY users (id, profilename, profileurl, reviewcount, friendcount) FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/fakeUserData/UserData.csv' with DELIMITER = ',' and header = 'true';

-- COPY images (id, userid, businessid, title, description, url, thumbnail, date) FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/fakeImgData/fakeImgData.csv' with DELIMITER = ',' and header = 'true';

-- COPY images FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/cassandra/allData.csv'

-- copy yelp.allImages (bizid, userid, uuid, imageid, date, bizname, profilename, title, description, url) to '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/imagesbyBiz_UserAll.csv';

-- copy yelp.allImages (bizid,userid,uuid,imageid,date,bizname,profilename,title,description,url) TO '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/imgBizUser.csv';

copy yelp.imagesbybiz_user (bizid, userid, uuid, imageid, date, bizname, profilename, title, description, url) from '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/imgBizUser.csv' WITH PAGETIMEOUT=40 AND PAGESIZE=20 AND CHUNKSIZE=3000;

-- copy yelp.imagesByBiz
--   (bizid,userid,uuid,imageid,date,bizname,profilename,title,description,url, thumbnail)
-- FROM '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/imagesbyBizAll.csv' WITH PAGETIMEOUT=40 AND PAGESIZE=20 AND CHUNKSIZE=3000;

-- COPY yelp.allImages (bizid, uuid, userid, imageid, date, bizname, profilename, title, description, url, thumbnail) TO '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/imagesbyBizAll.csv' WITH HEADER=true AND PAGETIMEOUT=40 AND MAXOUTPUTSIZE=100000 AND DELIMITER='|';
