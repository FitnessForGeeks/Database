create database if not exists FitnessForGeeks;
use FitnessForGeeks;

CREATE TABLE accounts (
    id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(20) NOT NULL UNIQUE,
    password VARCHAR(64) NOT NULL,
    firstName VARCHAR(15),
    lastName VARCHAR(20),
    isMale BOOLEAN,
    email VARCHAR(320) NOT NULL UNIQUE,
    birthDate DATE,
    weight DOUBLE(5 , 2 ),
    height INT(3),
    isVerified BOOLEAN NOT NULL DEFAULT FALSE,
    authKey VARCHAR(64) NOT NULL UNIQUE,
    description VARCHAR(255)
);

CREATE TABLE eatenRecipes (
    id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    accountId INT(10) NOT NULL REFERENCES accounts (id),
    date DATE NOT NULL,
    recipeId INT(10) NOT NULL
);

CREATE TABLE recipes (
    id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL UNIQUE,
    image VARCHAR(256),
    calories INT(5)
);

insert into recipes(title, image, calories) values('Kuchen', 'https://de.rc-cdn.community.thermomix.com/recipeimage/jtvuiwjs-cf76f-438951-cfcd2-2nm5kkqw/b1db0880-a300-4618-ad14-18be177dfbe8/main/0815-kuchen-gugelhupf-mit-gelinggarantie.jpg', 2000);
insert into recipes(title, image, calories) values('Keks', 'https://www.duden.de/_media_/full/K/Keks-201100285851.jpg', 739);
insert into recipes(title, image, calories) values ('Pizza', 'http://www.delonghi.com/Global/recipes/multifry/pizza_fresca.jpg', 495);
insert into recipes(title, image, calories) values ('Fisch', 'https://static.chefkoch-cdn.de/ck.de/rezepte/52/52527/792482-960x720-fisch-in-chilibutter-in-alufolie.jpg', 1630);
insert into recipes(title, image, calories) values ('Nudeln', 'https://www.fuersie.de/sites/fuersie/files/styles/590x443/public/images/pasta.jpg', 1);

update accounts set birthdate = str_to_date('15/4/2001', '%d/%m/%Y'), weight = 92, height = 182, isMale = true where id = 1;