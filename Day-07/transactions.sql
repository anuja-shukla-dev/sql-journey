-- SQL Day 7: Transactions
-- Topics: Transactions, START TRANSACTION, COMMIT, ROLLBACK, Auto-commit

USE topper_sql;
-- 1- ROLLBACK with UPDATE
START TRANSACTION;
SELECT * FROM students;
UPDATE students 
SET age = 27
WHERE student_id=1;

SELECT student_id, name, age
FROM students
WHERE student_id = 1;

ROLLBACK;

SELECT student_id, name, age
FROM students
WHERE student_id = 1;

-- 2- ROLLBACK with UPDATE
START TRANSACTION;
UPDATE students
SET email="ananya.verma22@example.com"
WHERE student_id=2;
SELECT student_id, name, email
FROM students
WHERE student_id=2;

ROLLBACK;
SELECT student_id, name, email
FROM students
WHERE student_id=2;

-- 3- ROLLBACK with DELETE
START TRANSACTION;
DELETE FROM students
WHERE student_id =3;
SELECT * FROM students;

ROLLBACK;
SELECT * FROM students;

-- 4- COMMIT with UPDATE
START TRANSACTION;
UPDATE students
SET age=19
WHERE student_id=4;

SELECT student_id, name, age
FROM students
WHERE student_id = 4;

COMMIT;

SELECT student_id, name, age
FROM students
WHERE student_id = 4;

-- 5- COMMIT with UPDATE
START TRANSACTION;
UPDATE students
SET name='Aryan Mishra'
WHERE student_id=5;

COMMIT;
SELECT student_id, name
FROM students
WHERE student_id=5;

-- 6- MULTIPLE OPERATIONS with ROLLBACK

START TRANSACTION;
UPDATE students
SET age = 21
WHERE student_id = 6;
SELECT student_id, name, age
FROM students
WHERE student_id = 6;

UPDATE students
SET email = 'arjun.mehta11@example.com'
WHERE student_id = 7;
SELECT student_id, name, email
FROM students 
WHERE student_id = 7;

DELETE FROM students
WHERE student_id = 8;
SELECT * FROM students;

ROLLBACK;

SELECT * FROM students;

-- 7- MULTIPLE OPERATIONS with COMMIT

START TRANSACTION;
UPDATE students
SET age = 22
WHERE student_id = 9;
SELECT student_id, name, age
FROM students
WHERE student_id = 9;

UPDATE students
SET name = 'Rahul Shukla'
WHERE student_id = 10;
SELECT student_id, name
FROM students
WHERE student_id = 10;

COMMIT;
SELECT * FROM students
WHERE student_id IN (9,10);

-- 8- CHECKING IF AUTO-COMMIT IS ENABLED
SELECT @@autocommit;

-- 9- DISABLING AUTO-COMMIT
SET autocommit = 0;

-- 10- UPDATE + ROLLBACK + AUTOCOMMIT
UPDATE students
SET age = 23
WHERE student_id = 11;

SELECT student_id, name, age
FROM students
WHERE student_id = 11;

ROLLBACK; 

SELECT student_id, name, age
FROM students
WHERE student_id = 11;
