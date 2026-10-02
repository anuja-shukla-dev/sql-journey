USE topper_sql;

-- ============================================
-- SELF JOIN QUERIES
-- ============================================

-- QUESTION 1
-- Display pairs of students who have the same age. Do not display a student paired with themselves.
SELECT 
s1.name AS student1,
s2.name AS student2,
s1.age AS age
FROM students AS s1
JOIN students AS s2
ON s1.age = s2.age
AND s1.student_id < s2.student_id;

-- QUESTION 2
-- Display pairs of students who have the same gender. Do not display duplicate pairs or a student paired with themselves.
SELECT
s1.name AS student1,
s2.name AS student2,
s1.gender AS gender
FROM students AS s1
JOIN students AS s2
ON s1.gender = s2.gender
AND s1.student_id < s2.student_id;

-- QUESTION 3
-- Find pairs of students where one student is older than the other. Display both student names and their ages. Do not display duplicate pairs.
SELECT
s1.name AS student1,
s2.name AS student2,
s1.age AS age1,
s2.age AS age2
FROM students AS s1
JOIN students AS s2
ON s1.age <> s2.age
AND s1.student_id < s2.student_id;

-- QUESTION 4
-- Find pairs of students who have the same age and the same gender. Do not display duplicate pairs or self-pairs.
SELECT 
s1.name AS student1,
s2.name AS student2,
s1.age AS age,
s1.gender AS gender
FROM students AS s1
JOIN students AS s2
ON s1.age = s2.age AND s1.gender = s2.gender
AND s1.student_id < s2.student_id;

-- QUESTION 5
-- Display pairs of students whose ages differ by exactly 1 year. Do not display duplicate pairs.
SELECT 
s1.name AS student1,
s2.name AS student2,
s1.age AS age1,
s2.age AS age2
FROM students AS s1
JOIN students AS s2
ON ABS(s1.age - s2.age) = 1
AND s1.student_id < s2.student_id;

-- QUESTION 6
-- Find pairs of students whose ages differ by more than 2 years. Display both names and their ages. Do not display duplicate pairs.
SELECT
s1.name AS student1,
s2.name AS student2,
s1.age AS age1,
s2.age AS age2
FROM students AS s1
JOIN students AS s2
ON ABS(s1.age - s2.age) > 2 
AND s1.student_id < s2.student_id;

-- QUESTION 7 
-- Find pairs of students who are the same age, but have different genders. Do not display duplicate pairs or self-pairs.
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

-- QUESTION 8 
-- Generate a student comparison report showing:
-- Student 1 name, Student 1 age
-- Student 2 name, Student 2 age and Age difference
-- Include only pairs where the students have different ages. Do not display duplicate pairs.
SELECT 
s1.name AS student1,
s1.age AS age1,
s2.name AS student2,
s2.age AS age2,
ABS(s1.age - s2.age) AS age_difference
FROM students AS s1
JOIN students AS s2
ON s1.age <> s2.age
AND s1.student_id < s2.student_id;
