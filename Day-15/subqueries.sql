USE topper_sql;

-- QUESTION 1
-- Find students whose age is greater than the average age of all students.
SELECT * FROM students
WHERE age > (
    SELECT AVG(age)
    FROM students
);


-- QUESTION 2
-- Find students whose age is less than the average age of all students.
SELECT * FROM students
WHERE age < (
    SELECT AVG(age)
    FROM students
);


-- QUESTION 3
-- Find students who have the maximum age among all students.
SELECT * FROM students
WHERE age = (
    SELECT MAX(age)
    FROM students
);


-- QUESTION 4
-- Find students who have the minimum age among all students.
SELECT * FROM students
WHERE age = (
    SELECT MIN(age)
    FROM students
);


-- QUESTION 5
-- Find students whose age is equal to the average age of all students.
SELECT * FROM students
WHERE age = (
    SELECT AVG(age)
    FROM students
);


-- QUESTION 6
-- Find students whose marks are greater than the average marks of all students.
SELECT students.name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
WHERE marks.marks > (
    SELECT AVG(marks)
    FROM marks
);


-- QUESTION 7
-- Find students who obtained the highest marks in the marks table.
SELECT students.name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
WHERE marks.marks = (
    SELECT MAX(marks)
    FROM marks
);


-- QUESTION 8
-- Find students who obtained the lowest marks in the marks table.
SELECT students.name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
WHERE marks.marks = (
    SELECT MIN(marks)
    FROM marks
);


