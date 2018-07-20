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

