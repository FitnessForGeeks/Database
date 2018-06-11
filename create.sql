create database if not exists FitnessForGeeks;
use FitnessForGeeks;

create table accounts(
  id int(10) not null primary key auto_increment,
  username varchar(20) not null unique,
  password varchar(64) not null,
  firstName varchar(15),
  lastName varchar(20),
  isMale boolean,
  email varchar(320) not null unique,
  birthDate date,
  weight double(5, 2),
  height int(3),
  isVerified boolean not null default false,
  authKey varchar(64) not null unique,
  description varchar(255)
);

create table eatenRecipes(
  id int(10) not null primary key auto_increment,
  accountId int(10) not null references accounts(id),
  date date not null,
  recipeId int(10) not null
);