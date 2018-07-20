DROP DATABASE IF EXISTS yelp;
CREATE DATABASE yelp;

USE yelp;

CREATE TABLE businesses (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  imageUrl varchar(100),
  PRIMARY KEY (id)
);

CREATE TABLE images (
  id int NOT NULL AUTO_INCREMENT,
  ownerId int NOT NULL,
  businessId int NOT NULL,
  title varchar(50),
  description varchar(500),
  originalUrl varchar(100) NOT NULL,
  thumbnailUrl varchar(100) NOT NULL,
  PRIMARY KEY (id)
);
