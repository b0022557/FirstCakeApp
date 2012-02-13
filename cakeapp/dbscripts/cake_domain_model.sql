
/* 
  create database placements default charset UTF8 default collate utf8_bin;
  grant all on placements.* to "placements"@"localhost" identified by "placepass";
  grant all on placements.* to "placements"@"localhost.localdomain" identified by "placepass";
  grant all on placements.* to "placements"@"%" identified by "placepass";
*/


use placements;

DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS employers;
DROP TABLE IF EXISTS jobdescriptions;
DROP TABLE IF EXISTS jobapplications;
DROP TABLE IF EXISTS statuslists;
DROP TABLE IF EXISTS statuscodes;

CREATE TABLE courses (
id INT(10) NOT NULL AUTO_INCREMENT,
course_code VARCHAR(128),
course_name VARCHAR(128),
PRIMARY KEY(id)
);

CREATE TABLE students (
id INT(10) NOT NULL AUTO_INCREMENT,
student_code VARCHAR(32),
student_name VARCHAR(128),
PRIMARY KEY(id)
);

CREATE TABLE employers (
id INT(10) NOT NULL AUTO_INCREMENT,
employer_name VARCHAR(128),
PRIMARY KEY(id)
);


CREATE TABLE jobdescriptions (
id INT(10) NOT NULL AUTO_INCREMENT,
job_title VARCHAR(128),
employer_id INT(10) NOT NULL,
PRIMARY KEY(id));

CREATE TABLE statuslists (
  id INT(10) NOT NULL AUTO_INCREMENT,
  name VARCHAR(128),
  PRIMARY KEY(id)
);

CREATE TABLE statuscodes (
  id INT(10) NOT NULL AUTO_INCREMENT,
  statuslist_id INT(10) NOT NULL,
  code VARCHAR(128) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE jobapplications (
  id INT(10) NOT NULL AUTO_INCREMENT,
  student_id INT(10) NOT NULL,
  jobdescription_id INT(10) NOT NULL,
  statuscode_id INT(10),
  PRIMARY KEY(id)
);


INSERT INTO statuslists values (1, 'Application Status');
INSERT INTO statuscodes values (1, 1, 'Expression Of Interest');
INSERT INTO statuscodes values (2, 1, 'Applied');
INSERT INTO statuscodes values (3, 1, 'Rejected');
INSERT INTO statuscodes values (4, 1, 'Accepted for Interview');
INSERT INTO statuscodes values (5, 1, 'Job Offer');
INSERT INTO statuscodes values (6, 1, 'Accepted');

INSERT INTO courses values (1, "XX223", "Mining 101");
INSERT INTO students values (1, "7466666", "Flintstone, Fred");
INSERT INTO employers values (1,  'Slate Rock and Gravel Company');
INSERT INTO jobdescriptions values ( 1, 'Rock Smasher', 1);

INSERT INTO jobapplications values ( 1, 1, 1, 1 );
