create database if not exists FitnessForGeeks;
use FitnessForGeeks;
create table accounts(
  id int(10) not null primary key auto_increment,
  username varchar(20) not null unique,
  password varchar(64) not null,
  first_name varchar(15),
  last_name varchar(20),
  email varchar(320) not null unique,
  birthdate date,
  weight decimal(5, 2),
  height int(3),
  bmi decimal (3, 1),
  isVerified boolean not null default false,
  authKey varchar(64) not null unique,
  description varchar(255)
);
