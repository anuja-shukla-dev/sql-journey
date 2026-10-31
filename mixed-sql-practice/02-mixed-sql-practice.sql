-- SQL MIXED PRACTICE
-- TOPICS: WHERE and ORDER BY, INNER JOIN, COUNT and DISTINCT, IN operator, GROUP BY and HAVING, Multiple-column JOIN conditions

USE topper_sql;

-- QUESTION 1: Retrieve students older than 20 years, sorted by age in descending order.
SELECT students.name, students.age
FROM students
WHERE students.age > 20
ORDER BY students.age DESC;

-- QUESTION 2: Display each course with its total number of enrolled students.
SELECT courses.course_name, COUNT(enrollments.student_id) AS total_enrollments
FROM courses
JOIN enrollments
ON courses.course_id = enrollments.course_id
GROUP BY courses.course_name;

-- QUESTION 3: Find distinct students who scored more than 80 marks in at least one course.
SELECT DISTINCT students.name
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN enrollments
ON marks.course_id = enrollments.course_id
AND marks.student_id = enrollments.student_id
WHERE marks.marks > 80;

-- QUESTION 4: Retrieve teachers who teach either Python Programming or Java.
SELECT teachers.teacher_name
FROM teachers
WHERE teachers.subject IN ("Python Programming", "Java");


-- QUESTION 5:  Find students whose average marks across all enrolled courses exceed 75.
SELECT students.name, AVG(marks.marks) AS avg_marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN enrollments
ON marks.student_id = enrollments.student_id
AND marks.course_id = enrollments.course_id
GROUP BY students.student_id, students.name
HAVING AVG(marks.marks) > 75;