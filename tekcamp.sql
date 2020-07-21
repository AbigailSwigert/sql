-- students datbase includes table named tekcamp01

SHOW DATABASES;

USE students;

SHOW TABLES;

DESC tekcamp01;

SELECT * FROM tekcamp01;

-- Creating my database to work in

CREATE DATABASE `tc1-abigail-swigert-`;

SHOW DATABASES;

USE `tc1-abigail-swigert-`;

-- Creating my tekcampers table to work in

CREATE TABLE IF NOT EXISTS tekcampers LIKE students.tekcamp01;

DESC tekcampers;

INSERT tekcampers
SELECT * FROM students.tekcamp01;

SELECT * FROM tekcampers;

-- Adding missing tekcampers

INSERT INTO tekcampers(first_name, last_name, gender)
VALUES ('John','Kol','M'),
('Kevin','Keesee','M'),
('Tyler','Clements','M'),
('Vimala','Murthy','F'),
('Arron','White','M'),
('Cody', 'Clark', 'M'),
('Devon', 'Brewster', 'M'),
('Gotham', 'Katta', 'M'),
('John', 'Bozarov', 'M'),
('Justin', 'Cheng', 'M'),
('Monica', 'Howard', 'F');

SELECT * FROM tekcampers;

-- Removing entries that are not current tekcampers

SELECT * FROM tekcampers WHERE first_name='Jake';

DELETE FROM tekcampers WHERE first_name = 'Jake';

DELETE FROM tekcampers WHERE first_name = 'Rosa';

DELETE FROM tekcampers WHERE first_name = 'Desaree';

SELECT * FROM tekcampers;

-- Moving gender information into the correct column

UPDATE tekcampers SET gender = education WHERE id < 28; -- because I set 28 - 38 with the gender in the correct column

SELECT * FROM tekcampers;

UPDATE tekcampers SET education = NULL;

-- Correcting tekcamper information

UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Gabe';

UPDATE tekcampers SET gender = 'M' WHERE first_name = 'George';

UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Micheal';

UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Michael';

UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Christian';

UPDATE tekcampers SET gender = 'F' WHERE first_name = 'Jessica';

UPDATE tekcampers SET gender = 'F' WHERE first_name = 'Norita';

UPDATE tekcampers SET first_name = 'Matthew' WHERE first_name = 'Mathew';

SELECT * FROM tekcampers;

-- Adding tekcamper education level

UPDATE tekcampers SET education = 'Bachelor of Arts' WHERE first_name = 'Abigail';

UPDATE tekcampers SET education = 'High School Diploma' WHERE last_name = 'Keesee';

UPDATE tekcampers SET education = 'Some College' WHERE last_name = 'Betts';

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Abigail'; -- decided to keep these more simplified accross the board

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Adam';

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Jose';

UPDATE tekcampers SET education = 'High School Diploma' WHERE first_name = 'Kevin'; -- used first_name because it's true for both Kevins, matched 2 but only updated 1 since the other was aleady set

UPDATE tekcampers SET education = 'Some College' WHERE first_name = 'Julian';

UPDATE tekcampers SET education = 'Some College' WHERE first_name = 'Christian';

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Jessica';

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Gotham';

UPDATE tekcampers SET education = 'Masters Degree' WHERE first_name = 'Vimala';

UPDATE tekcampers SET education = 'Associates Degree' WHERE first_name = 'Phoenix';

UPDATE tekcampers SET education = 'Doctorate' WHERE first_name = 'Norita';

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Sabitha';

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE first_name = 'Katherine';

UPDATE tekcampers SET education = 'Some College' WHERE first_name = 'Marcelo';

UPDATE tekcampers SET education = 'Some College' WHERE first_name = 'Cody';

UPDATE tekcampers SET education = 'Some College' WHERE first_name = 'George';

UPDATE tekcampers SET education = 'Some College' WHERE first_name = 'Justin';

UPDATE tekcampers SET education = 'High School Diploma' WHERE first_name = 'Zachary';

UPDATE tekcampers SET education = 'Associates Degree' WHERE first_name = 'Caleb';

UPDATE tekcampers SET education = 'Masters Degree' WHERE last_name = 'Choat';

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE last_name = 'Castiglione';

UPDATE tekcampers SET education = 'Bachelors Degree' WHERE last_name = 'Bozarov';

-- Running search queries

-- i. Students whose last names are longer than 7 characters
SELECT * FROM tekcampers HAVING CHAR_LENGTH(last_name) > 7;

--ii. Alphabatized by student's first name
SELECT * FROM tekcampers ORDER BY first_name; -- Caused me to realize that Aaron's name was misspelled

UPDATE tekcampers SET first_name = 'Aaron' WHERE first_name = 'Arron'; -- Corrected Aaron's name as soon as I realized it was incorrect

-- iii Alphabatized by student's last name
SELECT * FROM tekcampers ORDER BY last_name;

-- iv. Students that are male
SELECT * FROM tekcampers WHERE gender = 'M';

-- v.Students that are female
SELECT * FROM tekcampers WHERE gender = 'F';

-- vi. Students that have a Masters degree
SELECT * FROM tekcampers WHERE education = 'Masters Degree';

-- vii. Students that have a Bachelors degree
SELECT * FROM tekcampers WHERE education = 'Bachelors Degree';

-- viii. Students that have an Associate degree
SELECT * FROM tekcampers WHERE education = 'Associates Degree';

-- ix. Students that don't currently have a Higher Education Degree
SELECT * FROM tekcampers WHERE education <> 'Associates Degree' AND education <> 'Bachelors Degree' AND education <> 'Masters Degree' AND education <> 'Doctorate' OR education IS NULL; -- includes NULL

SELECT * FROM tekcampers WHERE education <> 'Associates Degree' AND education <> 'Bachelors Degree' AND education <> 'Masters Degree' AND education <> 'Doctorate'; -- Does not include NULL