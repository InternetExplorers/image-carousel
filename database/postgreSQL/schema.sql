
DROP TABLE IF EXISTS businesses;
CREATE TABLE  businesses (
  id integer NOT NULL,
  name character varying(100),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id integer NOT NULL ,
  profilename character varying(50) NOT NULL,
  profileurl character varying(100),
  reviewcount integer,
  friendcount integer,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS images;
CREATE TABLE images (
  id integer NOT NULL,
  userId int NOT NULL,
  businessId int NOT NULL,
  title varchar(75),
  description varchar(500),
  url varchar(200) NOT NULL,
  thumbnail varchar(200) NOT NULL,
  date DATE,
  PRIMARY KEY (id)
);

COPY businesses FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/fakeBizData/data.csv' DELIMITER ',' CSV HEADER;

COPY users FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/fakeUserData/userData.csv' DELIMITER ',' CSV HEADER;

COPY images FROM '/Users/michaelchan/Documents/Repos/W8 SDC/image-carousel/database/fakeImgData/fakeImgData.csv' DELIMITER ',' CSV HEADER;

-- ALTER TABLE to add foreign keys
ALTER TABLE images 
  ADD FOREIGN KEY (userId) REFERENCES users(id);
ALTER TABLE images 
  ADD FOREIGN KEY (businessId) REFERENCES businesses(id);

