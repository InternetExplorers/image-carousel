-- DROP TABLE IF EXISTS businesses;
CREATE TABLE IF NOT EXISTS businesses (
  id serial,
  businessname character varying(100),
  PRIMARY KEY (id)
) ;

-- DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
  id serial,
  profilename character varying(50) NOT NULL,
  profileurl character varying(100),
  reviewcount integer,
  friendcount integer,
  PRIMARY KEY (id)
);

-- DROP TABLE IF EXISTS images;
CREATE TABLE IF NOT EXISTS images (
  id serial,
  userId int NOT NULL,
  businessId int NOT NULL,
  title varchar(75),
  description varchar(500),
  url varchar(200) NOT NULL,
  thumbnail varchar(200) NOT NULL,
  date DATE,
  PRIMARY KEY (id)
);

-- COPY businesses (businessname) FROM '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/fakeBizData/data.csv' DELIMITER ',' CSV HEADER;

-- COPY users (profilename, profileurl, reviewcount, friendcount) FROM '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/fakeUserData/userData.csv' DELIMITER ',' CSV HEADER;

-- COPY images (userid, businessid, title, description, url, thumbnail, date) FROM '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/fakeImgData/fakeImgData.csv' DELIMITER ',' CSV HEADER;

-- ALTER TABLE to add foreign keys
-- ALTER TABLE images 
--   ADD FOREIGN KEY (userId) REFERENCES users(id);
-- ALTER TABLE images 
--   ADD FOREIGN KEY (businessId) REFERENCES businesses(id);

--select (sample_images.id, sample_businesses.name, sample_users.profilename, sample_users.profileurl, sample_users.reviewcount, sample_users.friendcount, sample_images.title, sample_images.description, sample_images.url, sample_images.thumbnail, sample_images.date)

-- COPY (
--   select 
--   sample_businesses.name as bizname,
--   sample_users.profilename,
--   sample_users.profileurl,
--   sample_users.reviewcount,
--   sample_users.friendcount,
--   sample_images.id as imageid,
--   sample_images.userid as userid,
--   sample_images.businessId as bizid,
--   sample_images.title,
--   sample_images.description,
--   sample_images.url,
--   sample_images.thumbnail,
--   sample_images.date
-- FROM sample_images inner join sample_businesses on sample_images.businessid=sample_businesses.id 
-- inner join sample_users on sample_images.userid=sample_users.id) to '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/sample.csv' CSV DELIMITER ',' HEADER;

-- COPY (
--   select 
--   images.businessId as bizid,
--   images.userid as userid,
--   images.id as imageid,
--   images.date
--   businesses.name as bizname,
--   users.profilename,
--   users.profileurl,
--   users.reviewcount,
--   users.friendcount,
--   images.title,
--   images.description,
--   images.url,
--   images.thumbnail,
-- FROM images inner join businesses on images.businessid=businesses.id 
-- inner join users on images.userid=users.id) to '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/secondFinal.csv' CSV DELIMITER ',' HEADER;

-- create index useridx on images (userid);
-- create index bizidx on images (businessid);

-- UPDATE images
-- SET title = 'newtitle',
--     description = 'updated'
-- WHERE
--  userid=8000000;

-- select * from images
--   where userid=9353419 and businessid=9423423;

-- UPDATE images
-- SET title = 'newtitle',
--     description = 'updated'
-- WHERE
--  userid=5000000 and businessid=5000000;


-- UPDATE images
-- SET title = 'newtitle',
--     description = 'updated'
-- WHERE
--  userid=5000;

-- update images set title='newtitle', description='title' 
-- where businessid=9053534