DROP TABLE IF EXISTS sorting_hat;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;


CREATE TABLE students(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  age INT
);

CREATE TABLE houses(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  logo TEXT
);

CREATE TABLE sorting_hat(
  id SERIAL PRIMARY KEY,
  house_id INT REFERENCES houses(id) ON DELETE CASCADE,
  student_id INT REFERENCES students(id) ON DELETE CASCADE
);
