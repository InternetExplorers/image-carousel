-- DROP TABLE IF EXISTS businesses;
-- CREATE TABLE businesses (
--   id serial,
--   businessname character varying(100),
--   PRIMARY KEY (id)
-- ) ;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id serial,
  profilename character varying(50) NOT NULL,
  profileurl character varying(100),
  reviewcount integer,
  friendcount integer,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS images;
CREATE TABLE images (
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

COPY users (profilename, profileurl, reviewcount, friendcount) FROM '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/fakeUserData/userData.csv' DELIMITER ',' CSV HEADER;

COPY images (userid, businessid, title, description, url, thumbnail, date) FROM '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/fakeImgData/fakeImgData.csv' DELIMITER ',' CSV HEADER;

-- ALTER TABLE to add foreign keys
ALTER TABLE images 
  ADD FOREIGN KEY (userId) REFERENCES users(id);
ALTER TABLE images 
  ADD FOREIGN KEY (businessId) REFERENCES businesses(id);

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
--   businesses.name as bizname,
--   users.profilename,
--   users.profileurl,
--   users.reviewcount,
--   users.friendcount,
--   images.id as imageid,
--   images.userid as userid,
--   images.businessId as bizid,
--   images.title,
--   images.description,
--   images.url,
--   images.thumbnail,
--   images.date
-- FROM images inner join businesses on images.businessid=businesses.id 
-- inner join users on images.userid=users.id) to '/Users/michaelchan/Documents/Repos/8WSDC/image-carousel/database/cassandra/finalData.csv' CSV DELIMITER ',' HEADER;


-- insert into images (userid, businessid, title, description, url, thumbnail, date) VALUES (50, 50, 'fifty', 'fifty', 'www.google.com', 'www.google.com', '2018-04-04')

UPDATE images SET images.title = 'newtitle', images.description = 'updated' WHERE userid=5;