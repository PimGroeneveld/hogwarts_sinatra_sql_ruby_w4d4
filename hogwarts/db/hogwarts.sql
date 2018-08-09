DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE students(
  id serial4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house VARCHAR(255),
  age INT
);

CREATE TABLE houses(
  id serial4 PRIMARY KEY,
  house_name VARCHAR(255),
  logo VARCHAR(255)
);
