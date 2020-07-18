-- students datbase includes table named tekcamp01

SHOW DATABASES;

USE students;

SHOW TABLES;

DESC tekcamp01;

SELECT * FROM tekcamp01;

CREATE DATABASE `tc1-abigail-swigert-`;

SHOW DATABASES;

USE `tc1-abigail-swigert-`;

CREATE TABLE IF NOT EXISTS tekcampers LIKE students.tekcamp01;

DESC tekcampers;

INSERT tekcampers
SELECT * FROM students.tekcamp01;

SELECT * FROM tekcampers;

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

SELECT * FROM tekcampers WHERE first_name='Jake';

DELETE FROM tekcampers WHERE first_name = 'Jake';

DELETE FROM tekcampers WHERE first_name = 'Rosa';

DELETE FROM tekcampers WHERE first_name = 'Desaree';

SELECT * FROM tekcampers;

UPDATE tekcampers SET gender = education WHERE id < 28; -- because I set 28 - 38 with the gender in the correct column

SELECT * FROM tekcampers;

UPDATE tekcampers SET education = NULL;

UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Gabe';

UPDATE tekcampers SET gender = 'M' WHERE first_name = 'George';

UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Micheal';

UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Michael';

UPDATE tekcampers SET gender = 'M' WHERE first_name = 'Christian';

UPDATE tekcampers SET gender = 'F' WHERE first_name = 'Jessica';

UPDATE tekcampers SET gender = 'F' WHERE first_name = 'Norita';

UPDATE tekcampers SET first_name = 'Matthew' WHERE first_name = 'Mathew';

SELECT * FROM tekcampers;

UPDATE tekcampers SET education = 'Bachelor of Arts' WHERE first_name = 'Abigail';

UPDATE tekcampers SET education = 'High School Diploma' WHERE last_name = 'Keesee';

UPDATE tekcampers SET education = 'Some College' WHERE last_name = 'Betts';

SELECT * FROM tekcampers;