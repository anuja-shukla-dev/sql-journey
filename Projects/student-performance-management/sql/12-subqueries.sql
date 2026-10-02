USE topper_sql;

-- ============================================
-- SUBQUERIES
-- ============================================

-- QUESTION 1
-- Display students whose age is greater than the average age of all students.
SELECT name, age FROM students
WHERE age > (
SELECT AVG(age)
FROM students
);

-- QUESTION 2
-- Display students whose age is less than the average age of all students.
SELECT name, age FROM students
WHERE age < (
SELECT AVG(age)
FROM students
);

-- QUESTION 3
-- Display the student(s) who have the highest age.
SELECT * FROM students
WHERE age = (
SELECT MAX(age)
FROM students
);

-- QUESTION 4
-- Display students who have scored more than the average marks of all recorded marks.
SELECT * FROM students
JOIN marks
ON students.student_id = marks.student_id
WHERE marks.marks > (
SELECT AVG(marks.marks)
FROM marks
);

-- QUESTION 5
-- Find the student(s) with the highest marks overall.
SELECT students.name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id
WHERE marks.marks = (
SELECT MAX(marks.marks)
FROM marks
);

-- QUESTION 6
-- Find students enrolled in at least one course using IN.
SELECT name
FROM students
WHERE student_id IN (
SELECT student_id
FROM enrollments
);

-- QUESTION 7
-- Display courses that have at least one student enrolled in them. Use a subquery with IN.
SELECT course_name
FROM courses
WHERE course_id IN (
SELECT course_id
FROM enrollments
);

-- QUESTION 8
-- Display students whose marks are greater than the average marks of the course they are taking. Use a correlated subquery.
SELECT students.student_id, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
WHERE marks.marks > (
SELECT AVG(m.marks)
FROM marks m
WHERE m.course_id = marks.course_id
);

-- QUESTION 9
-- Display students who have at least one marks record.
-- Use EXISTS.
SELECT name, student_id
FROM students s
WHERE EXISTS (
SELECT student_id 
FROM marks m
WHERE s.student_id = m.student_id
);

-- QUESTION 10
-- Display courses that have at least one marks record.
-- Use EXISTS.
SELECT course_id, course_name
FROM courses c
WHERE EXISTS (
SELECT course_id
FROM marks m
WHERE c.course_id = m.course_id
);

-- QUESTION 11
-- Display students who have scored higher than the average marks of their own courses. Show student name, course name, and marks.
SELECT students.name, courses.course_name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses 
ON marks.course_id = courses.course_id
WHERE marks.marks > (
SELECT AVG(marks.marks)
FROM marks m
WHERE m.course_id = marks.course_id
);

-- QUESTION 12
-- Display the student(s) who achieved the highest marks in each course. Show course name, student name, and marks.
SELECT students.name, courses.course_name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id
WHERE marks.marks = (
SELECT MAX(m.marks)
FROM marks m
WHERE m.course_id = marks.course_id
);

-- QUESTION 13
-- Display students who have scored higher than 90 and are enrolled in at least one course.
SELECT students.name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
WHERE marks.marks > 90
AND students.student_id IN (
    SELECT student_id
    FROM enrollments
);

-- QUESTION 14
-- Display students who are enrolled in the same course as student ID 1. Do not include student ID 1 in the result.
SELECT students.name, courses.course_name
FROM students
JOIN enrollments
ON students.student_id = enrollments.student_id
JOIN courses
ON enrollments.course_id = courses.course_id
WHERE enrollments.course_id IN (
SELECT course_id
FROM enrollments
WHERE student_id = 1
)
AND students.student_id <> 1;