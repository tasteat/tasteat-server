-- CREATE DATABASE tasteat CHARACTER SET utf8;
USE tasteat;

drop table if exists lang;
CREATE TABLE lang(
  lang varchar(10) not null primary key,
  description varchar(30) not null
);

drop table if exists ingredient;
CREATE TABLE ingredient(
  id integer not null primary key auto_increment
);

drop table if exists ingredient_translation;
CREATE TABLE ingredient_translation (
  ingredient_id integer not null,
  lang varchar(10) not null,
  name varchar(200) not null,
  FOREIGN KEY (ingredient_id) REFERENCES ingredient(id),
  FOREIGN KEY (lang) REFERENCES lang(lang)
);

drop table if exists unit;
CREATE TABLE unit(
  id integer not null primary key auto_increment
);

drop table if exists unit_translation;
CREATE TABLE unit_translation (
  unit_id integer not null,
  lang varchar(10) not null,
  name varchar(200) not null,
  FOREIGN KEY (unit_id) REFERENCES unit(id),
  FOREIGN KEY (lang) REFERENCES lang(lang)
);

drop table if exists recipe;
CREATE TABLE recipe(
  id integer not null primary key auto_increment,
  title varchar(200) not null,
  lang varchar(10) not null,
  directions text,
  servings integer,
  total_time integer,
  FOREIGN KEY (lang) REFERENCES lang(lang)
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

