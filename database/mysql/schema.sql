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
  profileName varchar(50) NOT NULL,
  profileUrl varchar(100),
  profileReviewCount int,
  profileFriendCount int,
  PRIMARY KEY (id)
);

CREATE TABLE images (
  id int NOT NULL AUTO_INCREMENT,
  ownerId int NOT NULL,
  businessId int NOT NULL,
  title varchar(50),
  description varchar(500),
  date DATE,
  originalUrl varchar(100) NOT NULL,
  thumbnailUrl varchar(100) NOT NULL,
  PRIMARY KEY (id)
);

INSERT into businesses (name) VALUES ("The Forest Trumpet");
INSERT into businesses (name) VALUES ("The Pearl Well");
INSERT into businesses (name) VALUES ("The First Flavour");
INSERT into businesses (name) VALUES ("The Polar Grove");
INSERT into businesses (name) VALUES ("The Coriander Jewel");
INSERT into businesses (name) VALUES ("The Nightingale");
INSERT into businesses (name) VALUES ("Basil");
INSERT into businesses (name) VALUES ("Meadows");
INSERT into businesses (name) VALUES ("Parlay");
INSERT into businesses (name) VALUES ("The Pearl");
INSERT into businesses (name) VALUES ("The Sailing Street");
INSERT into businesses (name) VALUES ("The Crystal Bay");
INSERT into businesses (name) VALUES ("The Big Heart");
INSERT into businesses (name) VALUES ("The Fable Bistro");
INSERT into businesses (name) VALUES ("The Spiced Hog");
INSERT into businesses (name) VALUES ("Gem");
INSERT into businesses (name) VALUES ("Butlers");
INSERT into businesses (name) VALUES ("Aqua");
INSERT into businesses (name) VALUES ("The Eclipse");
INSERT into businesses (name) VALUES ("Interlude");
INSERT into businesses (name) VALUES ("The Karma Tulip");
INSERT into businesses (name) VALUES ("The Solar Pantry");
INSERT into businesses (name) VALUES ("The Moroccan Pizzeria");
INSERT into businesses (name) VALUES ("The Delhi Bites");
INSERT into businesses (name) VALUES ("The Arctic Door");
INSERT into businesses (name) VALUES ("Unwind");
INSERT into businesses (name) VALUES ("Sapphire");
INSERT into businesses (name) VALUES ("Grace");
INSERT into businesses (name) VALUES ("The Hive");
INSERT into businesses (name) VALUES ("Meadows");
INSERT into businesses (name) VALUES ("The Oval Devil");
INSERT into businesses (name) VALUES ("The Light Bay");
INSERT into businesses (name) VALUES ("The Bengal Walk");
INSERT into businesses (name) VALUES ("The Harmonic Dream");
INSERT into businesses (name) VALUES ("The Underwater Rose");
INSERT into businesses (name) VALUES ("Roadhouse");
INSERT into businesses (name) VALUES ("The Gallery");
INSERT into businesses (name) VALUES ("Castle");
INSERT into businesses (name) VALUES ("Roast");
INSERT into businesses (name) VALUES ("Moonlight");
INSERT into businesses (name) VALUES ("The Olive House");
INSERT into businesses (name) VALUES ("The Aqua Place");
INSERT into businesses (name) VALUES ("The Clear Pig");
INSERT into businesses (name) VALUES ("The Cool Cat Goddess");
INSERT into businesses (name) VALUES ("The Magical Boar");
INSERT into businesses (name) VALUES ("The Nomad");
INSERT into businesses (name) VALUES ("The Boutique");
INSERT into businesses (name) VALUES ("Paragon");
INSERT into businesses (name) VALUES ("The Hive");
INSERT into businesses (name) VALUES ("Shambles");
INSERT into businesses (name) VALUES ("The Boiling Elephant");
INSERT into businesses (name) VALUES ("The Pepper Blend");
INSERT into businesses (name) VALUES ("The Magical Street");
INSERT into businesses (name) VALUES ("The Vintage Victory");
INSERT into businesses (name) VALUES ("The Juniper Bay");
INSERT into businesses (name) VALUES ("Friends");
INSERT into businesses (name) VALUES ("Simmer Down");
INSERT into businesses (name) VALUES ("The Crown");
INSERT into businesses (name) VALUES ("Fluorescence");
INSERT into businesses (name) VALUES ("Indigo");
INSERT into businesses (name) VALUES ("The Palm Tower");
INSERT into businesses (name) VALUES ("The Grand Night");
INSERT into businesses (name) VALUES ("The Cinnamon Walk");
INSERT into businesses (name) VALUES ("The Orange Elephant");
INSERT into businesses (name) VALUES ("The Brimstone Grove");
INSERT into businesses (name) VALUES ("Gentle");
INSERT into businesses (name) VALUES ("The Nomad");
INSERT into businesses (name) VALUES ("Splash");
INSERT into businesses (name) VALUES ("Bounty");
INSERT into businesses (name) VALUES ("Gastrognome");
INSERT into businesses (name) VALUES ("The Sour Room");
INSERT into businesses (name) VALUES ("The Brimstone Heaven");
INSERT into businesses (name) VALUES ("The Jazz Junction");
INSERT into businesses (name) VALUES ("The Friendly Parlour");
INSERT into businesses (name) VALUES ("The Holy Garden");
INSERT into businesses (name) VALUES ("Potroast");
INSERT into businesses (name) VALUES ("Paramount");
INSERT into businesses (name) VALUES ("The Hive");
INSERT into businesses (name) VALUES ("Happening");
INSERT into businesses (name) VALUES ("Fabled");
INSERT into businesses (name) VALUES ("The Painted Leaf");
INSERT into businesses (name) VALUES ("The Karma Place");
INSERT into businesses (name) VALUES ("The River Lounge");
INSERT into businesses (name) VALUES ("The Pink Harvest");
INSERT into businesses (name) VALUES ("The Crystal Lane");
INSERT into businesses (name) VALUES ("The Bell Tower");
INSERT into businesses (name) VALUES ("Mirrors");
INSERT into businesses (name) VALUES ("Roadhouse");
INSERT into businesses (name) VALUES ("Medallion");
INSERT into businesses (name) VALUES ("Kingsize");
INSERT into businesses (name) VALUES ("The Cinnamon Ranch");
INSERT into businesses (name) VALUES ("The Incredible Bites");
INSERT into businesses (name) VALUES ("The Little Eats");
INSERT into businesses (name) VALUES ("The Mellow Courtyard");
INSERT into businesses (name) VALUES ("The Dwarf Bay");
INSERT into businesses (name) VALUES ("The Lotus");
INSERT into businesses (name) VALUES ("The Turban");
INSERT into businesses (name) VALUES ("Paragon");
INSERT into businesses (name) VALUES ("Jewel");
INSERT into businesses (name) VALUES ("Aquas");

INSERT into users (profileName, profileUrl, profileReviewCount, profileFriendCount) 
VALUES ("Amya Ryan", "https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/user1.jpg", 42, 30);
INSERT into users (profileName, profileUrl, profileReviewCount, profileFriendCount) 
VALUES ("Joanie Leannon", "https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/user2.jpg", 55, 6);
INSERT into users (profileName, profileUrl, profileReviewCount, profileFriendCount) 
VALUES ("John Doe", "https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/user3.jpg", 1, 5);

INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,1,"raw shrimp", "this is bad", "https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg", "https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg", "2018-01-01");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,1,"cook shrimp", "this is good", "https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg", "https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg", "2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,1,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,1,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,1,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,2,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,2,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,2,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,2,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,2,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,3,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,3,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,3,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,3,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,3,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,4,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,4,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,4,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,4,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,4,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,4,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,5,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,5,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,5,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,5,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,5,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,5,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,6,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,6,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,7,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,7,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,7,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,7,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,7,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,8,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,8,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,8,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,8,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,8,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,8,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,9,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,9,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,9,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,10,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,11,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,12,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,12,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,12,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,12,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,13,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,13,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,14,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,14,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,14,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,14,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,14,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,15,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,15,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,16,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,17,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,18,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,18,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,18,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,18,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,18,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,19,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,19,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,19,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,19,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,20,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,20,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,21,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,21,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,21,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,21,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,21,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,22,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,23,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,23,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,23,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,23,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,24,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,24,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,25,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,25,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,27,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,28,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,28,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,28,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,29,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,29,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,29,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,30,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,30,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,30,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,30,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,30,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,31,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,31,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,31,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,31,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,32,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,32,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,32,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,32,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,32,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,33,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,33,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,33,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,34,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,34,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,34,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,34,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,34,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,34,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,35,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,36,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,36,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,36,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,36,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,36,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,36,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,37,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,37,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,38,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,38,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,38,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,39,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,39,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,39,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,39,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,39,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,43,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,43,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,43,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,44,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,44,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,44,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,44,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,44,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,45,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,45,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,45,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,45,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,46,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,46,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,46,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,46,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,47,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,47,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,47,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,47,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,47,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,47,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,49,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,49,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,49,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,49,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,50,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,50,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,50,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,50,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,50,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,50,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,51,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,51,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,51,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,51,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,51,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,52,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,52,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,53,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,54,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,54,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,54,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,54,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,54,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,54,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,56,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,56,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,56,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,57,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,57,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,57,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,57,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,57,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,59,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,59,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,59,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,59,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,59,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,59,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,60,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,61,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,62,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,62,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,62,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,64,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,64,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,64,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,64,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,64,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,65,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,65,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,65,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,65,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,65,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,65,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,66,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,66,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,66,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,66,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,66,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,66,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,67,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,67,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,68,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,70,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,70,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,70,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,70,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,70,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,71,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,71,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,71,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,71,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,72,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,72,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,72,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,72,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,72,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,72,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,73,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,73,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,73,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,73,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,73,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,74,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,74,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,74,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,74,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,74,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,75,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,76,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,76,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,76,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,76,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,76,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,77,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,77,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,77,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,77,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,77,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,78,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,78,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,78,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,78,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,78,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,79,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,79,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,79,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,79,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,80,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,80,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,80,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,80,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,81,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,81,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,81,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,81,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,81,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,82,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,82,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,82,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,82,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,82,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,82,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,83,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,83,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,84,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,84,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,85,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,86,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,86,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,86,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,86,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,86,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,86,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,87,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,87,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,87,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,87,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,89,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,89,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,90,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,91,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,91,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,91,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,91,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,91,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,92,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,92,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,92,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,93,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,93,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,93,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-20");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,93,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,93,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,93,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,94,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,94,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,95,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-27");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,95,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,96,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,96,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-29");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,96,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,96,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-24");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,96,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,96,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-28");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,97,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,98,"noodle","best noodle NA","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/noodle1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbnoodle1.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,98,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-26");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (1,98,"hotpot","Chinese Hot pot da best","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/pot1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbpot1.jpg","2018-01-25");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,98,"raw shrimp","this is bad","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp1.jpg","2018-01-21");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,98,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-22");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,99,"oyster","the world is your oyster","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/oyster1.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumboyster1.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (2,99,"cook shrimp","this is good","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/shrimp2.jpg","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbShrimp2.jpg","2018-01-23");
INSERT into images (ownerId, businessId, title, description, originalUrl, thumbnailUrl, date) 
VALUES (3,99,"Cheese Spongebob","Mr.krab bff","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/cheese1.png","https://s3.us-east-2.amazonaws.com/hrsf98-yelp-project/thumbcheese1.png","2018-01-23");
