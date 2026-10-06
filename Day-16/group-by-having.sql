USE topper_sql;

-- QUESTION 1
-- Count the number of students enrolled in each course.
SELECT course_id, COUNT(student_id) AS students_count
FROM enrollments
GROUP BY course_id;

-- QUESTION 2
-- Calculate the average marks obtained in each course.
SELECT course_id, AVG(marks) AS average_marks
FROM marks
GROUP BY course_id; 

-- QUESTION 3
-- Find the highest marks obtained in each course.
SELECT course_id, MAX(marks) AS highest_marks
FROM marks
GROUP BY course_id;

-- QUESTION 4
-- Find the lowest marks obtained in each course.
SELECT course_id, MIN(marks) AS lowest_marks
FROM marks
GROUP BY course_id;

-- QUESTION 5
-- Calculate the total marks obtained in each course.
SELECT course_id, SUM(marks) AS total_marks
FROM marks
GROUP BY course_id;

-- QUESTION 6
-- Count the number of courses each student is enrolled in.
SELECT student_id, COUNT(course_id) AS no_of_enrollments
FROM enrollments
GROUP BY student_id; 

-- QUESTION 7
-- Calculate the average marks for each student in each course.
SELECT student_id, course_id, AVG(marks) AS average_marks
FROM marks
GROUP BY student_id, course_id;

-- QUESTION 8
-- Calculate the average marks in each course for marks of 50 or above.
SELECT course_id, AVG(marks) AS average_marks
FROM marks
WHERE marks >= 50
GROUP BY course_id;

-- QUESTION 9
-- Calculate the total marks obtained by each student.
SELECT student_id, SUM(marks) AS total_marks
FROM marks
GROUP BY student_id;

-- QUESTION 10
-- Find courses having more than four enrollments.
SELECT course_id, COUNT(student_id) AS student_count
FROM enrollments
GROUP BY course_id
HAVING COUNT(student_id) > 4;

-- QUESTION 11
-- Find courses with an average mark greater than 70.
SELECT course_id, AVG(marks) AS average_marks
FROM marks
GROUP BY course_id
HAVING AVG(marks) > 70;

-- QUESTION 12
-- Find courses where the highest mark is greater than 90.
SELECT course_id, MAX(marks) AS highest_marks
FROM marks
GROUP BY course_id
HAVING MAX(marks) > 90;

-- QUESTION 13
-- Find students enrolled in more than one course.
SELECT student_id, COUNT(course_id) AS no_of_enrollments
FROM enrollments
GROUP BY student_id
HAVING COUNT(course_id) > 1;

-- QUESTION 14
-- Find courses with an average mark above 70 among marks of 40 or above.
SELECT course_id, AVG(marks) AS average_marks
FROM marks
WHERE marks >= 40
GROUP BY course_id
HAVING AVG(marks) > 70;

-- QUESTION 15
-- Find courses with marks recorded for more than three students.
SELECT course_id, COUNT(student_id) AS students_with_marks
FROM marks
GROUP BY course_id
HAVING COUNT(student_id) > 3;

-- QUESTION 16
-- Find courses having at least three enrollments.
SELECT course_id, COUNT(student_id) AS enrollments
FROM enrollments
GROUP BY course_id
HAVING COUNT(student_id) >= 3;

-- QUESTION 17
-- Find courses with an average mark greater than 75.
SELECT course_id, AVG(marks) AS average_marks
FROM marks
GROUP BY course_id
HAVING AVG(marks) > 75;

-- QUESTION 18
-- Find students with an average mark greater than 70.
SELECT student_id, AVG(marks) AS average_marks
FROM marks
GROUP BY student_id
HAVING AVG(marks) > 70;

-- QUESTION 19
-- Find courses with total marks greater than 300.
SELECT course_id, SUM(marks) AS total_marks
FROM marks
GROUP BY course_id
HAVING SUM(marks) > 300;
