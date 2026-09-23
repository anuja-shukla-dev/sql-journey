USE topper_sql;

-- SELECT * FROM students;
-- SELECT * FROM join_employees;

-- QUESTION 1 — EMPLOYEES FROM THE SAME DEPARTMENT
SELECT 
e1.name AS employee1,
e2.name AS employee2
FROM join_employees AS e1
JOIN join_employees AS e2
ON e1.dept_id = e2.dept_id
AND e1.emp_id < e2.emp_id;

-- QUESTION 2 — STUDENTS OF THE SAME AGE
SELECT
s1.name AS student1,
s2.name AS student2,
s1.age As age
FROM students AS s1
JOIN students AS s2
ON s1.age = s2.age 
AND s1.student_id < s2.student_id;

-- QUESTION 3 — STUDENTS OF THE SAME GENDER
SELECT
s1.name AS student1,
s2.name AS student2,
s1.gender AS gender
FROM students AS s1
JOIN students AS s2
ON s1.gender = s2.gender
AND s1.student_id < s2.student_id;

-- QUESTION 4 — STUDENTS OF THE SAME GENDER AND SAME AGE
SELECT 
s1.name AS student1,
s2.name AS student2,
s1.age AS age,
s1.gender AS gender
FROM students AS s1
JOIN students AS s2
ON s1.age = s2.age AND s1.gender = s2.gender
AND s1.student_id < s2.student_id;

-- QUESTION 5 — PAIRS WHERE STUDENT 1 IS GREATER THAN STUDENT 2
SELECT
s1.name AS student1,
s2.name AS student2,
s1.age AS student1_age,
s2.age AS student2_age
FROM students AS s1
JOIN students AS s2
ON s1.age > s2.age

-- QUESTION 6 — PAIRS OF EMPLOYEES BELONG TO DIFFERENT DEPARTMENTS
SELECT
emp1.name AS employee1,
emp2.name AS employee2,
emp1.dept_id AS emp1_id,
emp2.dept_id AS emp2_id
FROM join_employees AS emp1
JOIN join_employees AS emp2
ON emp1.dept_id <> emp2.dept_id
AND emp1.emp_id < emp2.emp_id;

-- QUESTION 7 - PAIRS OF STUDENTS WHO HAVE THE SAME AGE BUT DIFFERENT GENDER
SELECT
s1.name AS student1,
s2.name AS student2,
s1.age AS age,
s1.gender AS gender1,
s2.gender AS gender2
FROM students AS s1
JOIN students AS s2
ON s1.age = s2.age AND s1.gender <> s2.gender
AND s1.student_id < s2.student_id;

-- QUESTION 8 - PAIRS OF STUDENTS WHERE AGE DIFFERENCE IS EXACTLY 1 YEAR
SELECT
s1.name AS student1,
s2.name AS student2,
s1.age AS age1,
s2.age AS age2
FROM students AS s1
JOIN students AS s2
ON ABS(s1.age - s2.age = 1)
AND s1.student_id < s2.student_id;

-- QUESTION 9 - PAIRS OF STUDENTS WITH SAME GENDER BUT DIFFERENT AGES
SELECT
s1.name AS student1,
s2.name AS student2,
s1.gender AS gender,
s1.age AS age1,
s2.age AS age2
FROM students AS s1
JOIN students AS s2
ON s1.gender = s2.gender AND s1.age <> s2.age
AND s1.student_id < s2.student_id;
