

create database placements default charset UTF8 default collate utf8_bin;
grant all on placements.* to "placements"@"localhost" identified by "placepass";
grant all on placements.* to "placements"@"localhost.localdomain" identified by "placepass";
grant all on placements.* to "placements"@"%" identified by "placepass";


use placements;

DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS jobdescriptions;
DROP TABLE IF EXISTS jobdescriptions_students;

CREATE TABLE students (
id INT(10) NOT NULL AUTO_INCREMENT,
student_code VARCHAR(32),
student_name VARCHAR(128),
PRIMARY KEY(id));

CREATE TABLE jobdescriptions (
id INT(10) NOT NULL AUTO_INCREMENT,
job_title VARCHAR(128),
PRIMARY KEY(id));

CREATE TABLE jobdescriptions_students (
  students_id INT(10) NOT NULL,
  jobdescriptions_id INT(10) NOT NULL
);


INSERT INTO STUDENTS values (null, "7466666", "Flintstone, Fred");