-- to create a table 
CREATE TABLE PERSON (
	ID INTEGER PRIMARY KEY,
	NAME TEXT NOT NULL,
	AGE INTEGER NOT NULL,
	GENDER TEXT NOT NULL
);

-- to insert values into the table
INSERT INTO PERSON VALUES (1, 'ABC' , 24, 'M');
INSERT INTO PERSON VALUES (2, 'XYZ' , 23, 'F');
INSERT INTO PERSON VALUES (3, 'PQR' , 26, 'M');
INSERT INTO PERSON VALUES (4, 'MNO' , 21, 'F');
INSERT INTO PERSON VALUES (5, 'QWE' , 22, 'M');
INSERT INTO PERSON VALUES (6, 'AXC' , 24, 'M');
INSERT INTO PERSON VALUES (7, 'ADG' , 21, 'F');

-- to get all the values in a table 
SELECT * FROM PERSON;

CREATE TABLE PERSON1 (
    ID INTEGER PRIMARY KEY,
    NAME TEXT NOT NULL,
	AGE INTEGER NOT NULL,
	GENDER TEXT NOT NULL
)

INSERT INTO PERSON1 VALUES (1, 'ABC' , 24, 'M');
INSERT INTO PERSON1 VALUES (2, 'XYZ' , 23, 'F');
INSERT INTO PERSON1 VALUES (3, 'PQR' , 26, 'M');
INSERT INTO PERSON1 VALUES (4, 'MNO' , 21, 'F');
INSERT INTO PERSON1 VALUES (5, 'QWE' , 22, 'M');

SELECT * FROM PERSON1;

-- to delete a table 
DROP TABLE PERSON1;

SELECT * FROM public."PRODUCT";

-- to get only the name column
SELECT NAME FROM PERSON;

-- to get only the name and age columns
SELECT NAME, AGE FROM PERSON;

-- order of columns in the command is the order in which the columns are displayed in the output
SELECT AGE, NAME FROM PERSON;

-- to give a column a alias just for this output
SELECT NAME AS FULLNAME FROM PERSON;

-- COMPARISON OPERATORS
-- to get only the where the value of a column is something we pass in the command
SELECT * FROM PERSON WHERE ID = 3; 

-- to get only the name and age where the condtition matches
SELECT NAME, AGE FROM PERSON WHERE ID = 3;

-- condition where it matches with a string
SELECT NAME, AGE FROM PERSON WHERE NAME = 'PQR';

-- greater than condition 
SELECT * FROM PERSON WHERE ID > 3;

-- greater than or equal to condition 
SELECT * FROM PERSON WHERE ID >= 3;

-- less than condition 
SELECT * FROM PERSON WHERE ID < 3;

-- less then equal to condition
SELECT * FROM PERSON WHERE ID <= 3;

-- not equal to 3 
SELECT * FROM PERSON WHERE ID != 3;

-- another way to do the above thing 
SELECT * FROM PERSON WHERE ID <> 3;

-- BOOLEAN OPERATORS
-- muliple conditions 
SELECT * FROM PERSON WHERE GENDER = 'F' AND AGE >= 18;

SELECT * FROM PERSON WHERE GENDER = 'M' OR AGE >= 18;

SELECT * FROM PERSON WHERE ID = 1 OR ID = 2 OR ID = 3;

-- another way to write the above thing
SELECT * FROM PERSON WHERE ID IN (1, 2, 3);

-- select any row where the name starts with a A
SELECT * FROM PERSON WHERE NAME LIKE 'A%';

-- select any row where the name end with a C
SELECT * FROM PERSON WHERE NAME LIKE '%C';

-- select any row where the name does not end with a C 
SELECT * FROM PERSON WHERE NAME NOT LIKE '%C'; 

-- select any row where the name contains the characters AB together anywhere in the string
SELECT * FROM PERSON WHERE NAME LIKE '%AB%';

-- order the ouput rows based on a column
SELECT * FROM PERSON ORDER BY ID ASC; -- ASCENDING 

SELECT * FROM PERSON ORDER BY ID DESC; -- DESCENDING

-- order the rows by age in descending order but when there is a tie order them by id in ascending order
SELECT * FROM PERSON ORDER BY AGE DESC, ID ASC; 

-- combining filtering and ordering
SELECT * FROM PERSON WHERE NAME LIKE 'A%' ORDER BY AGE DESC;

-- to get only the first 2 results
SELECT * FROM PERSON WHERE AGE >= 20 LIMIT 2;

-- to get the first two 2 results after the top result i.e. get results number 2 and 3 
SELECT * FROM PERSON WHERE AGE >= 20 LIMIT 2 OFFSET 1;

-- to insert values into the table with a custom column order 
INSERT INTO PERSON(NAME, AGE, ID, GENDER) VALUES('IJK', 29, 8,'F');

-- insert something into a table and return it
INSERT INTO PERSON(NAME, AGE, ID, GENDER) VALUES('JKl', 32, 9,'F') RETURNING *;

-- insert something into a table and only return the id and the name 
INSERT INTO PERSON(NAME, AGE, ID, GENDER) VALUES('KlM', 23, 10,'M') RETURNING ID, NAME;

-- insert something into a table and return only the id
INSERT INTO PERSON(NAME, AGE, ID, GENDER) VALUES('LMN', 24, 11,'M') RETURNING ID;

-- to delete a row from the table
DELETE FROM PERSON WHERE ID = 10;

-- delete a row and the return the row 
DELETE FROM PERSON WHERE ID = 11 RETURNING *;

-- to update a value a entry and return the whole row
UPDATE PERSON SET NAME = 'JKL' WHERE ID = 9 RETURNING *;

-- to update multiple rows
UPDATE PERSON SET GENDER = 'F' WHERE ID > 8 RETURNING *;