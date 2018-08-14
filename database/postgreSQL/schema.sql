DROP TABLE IF EXISTS sample_businesses;
CREATE TABLE  sample_businesses (
  id integer NOT NULL,
  name character varying(100),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS sample_users;
CREATE TABLE sample_users (
  id integer NOT NULL ,
  profilename character varying(50) NOT NULL,
  profileurl character varying(100),
  reviewcount integer,
  friendcount integer,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS sample_images;
CREATE TABLE sample_images (
  id serial NOT NULL,
  userId int NOT NULL,
  businessId int NOT NULL,
  title varchar(75),
  description varchar(500),
  url varchar(200) NOT NULL,
  thumbnail varchar(200) NOT NULL,
  date DATE,
  PRIMARY KEY (id)
);

COPY sample_businesses FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/fakeBizData/fakeBizSample.csv' DELIMITER ',' CSV HEADER;

COPY sample_users FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/fakeUserData/fakeUserDataSample.csv' DELIMITER ',' CSV HEADER;

COPY sample_images FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/fakeImgData/fakeImgDataSample.csv' DELIMITER ',' CSV HEADER;

-- ALTER TABLE to add foreign keys
ALTER TABLE sample_images 
  ADD FOREIGN KEY (userId) REFERENCES sample_users(id);
ALTER TABLE sample_images 
  ADD FOREIGN KEY (businessId) REFERENCES sample_businesses(id);

--select (sample_images.id, sample_businesses.name, sample_users.profilename, sample_users.profileurl, sample_users.reviewcount, sample_users.friendcount, sample_images.title, sample_images.description, sample_images.url, sample_images.thumbnail, sample_images.date)

-- COPY (select * from images
-- inner join businesses on images.businessid=businesses.id 
-- inner join users on images.userid=users.id) to '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/cassandra/allData.csv' CSV DELIMITER ',' HEADER;