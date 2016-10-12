-- CREATE DATABASE tasteat CHARACTER SET utf8;
USE tasteat;

drop table if exists ingredient;
CREATE TABLE ingredient(
  id integer not null primary key auto_increment,
  name varchar(200) not null,
  lang varchar(10) not null
);

drop table if exists unit;
CREATE TABLE unit(
  id integer not null primary key auto_increment,
  name varchar(100) not null,
  lang varchar(10) not null
);

drop table if exists recipe;
CREATE TABLE recipe(
  id integer not null primary key auto_increment,
  title varchar(200) not null,
  lang varchar(10) not null,
  directions text,
  servings integer,
  total_time integer
);

drop table if exists recipe_ingredients;
CREATE TABLE recipe_ingredients(
  recipe_id integer not null,
  ingredient_id integer not null,
  unit_id integer not null,
  qty varchar(10) not null,
  FOREIGN KEY (recipe_id) REFERENCES recipe(id),
  FOREIGN KEY (ingredient_id) REFERENCES ingredient(id),
  PRIMARY KEY (recipe_id, ingredient_id)
);

