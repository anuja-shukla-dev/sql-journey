-- SQL MIXED PRACTICE
-- Topics: Joins, Aggregation, Subqueries, GROUP BY, HAVING, DISTINCT

USE topper_sql;

-- QUESTION 1: Calculate the average marks of students scoring above 75 and display them in descending order.
SELECT students.name, AVG(marks.marks) AS avg_marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
GROUP BY students.student_id
HAVING AVG(marks.marks) > 75
ORDER BY AVG(marks.marks) DESC;

-- QUESTION 2: Find students who have not enrolled in any course using LEFT JOIN and NULL checking.
SELECT students.name
FROM students
LEFT JOIN enrollments
ON students.student_id = enrollments.student_id
WHERE enrollments.student_id IS NULL;

-- QUESTION 3: Display course-wise enrollment counts and average marks for courses having at least three enrolled students.
SELECT courses.course_name, COUNT(enrollments.student_id) AS students_enrolled, AVG(marks.marks) as avg_marks
FROM courses
JOIN enrollments
ON courses.course_id = enrollments.course_id
JOIN marks
ON enrollments.student_id = marks.student_id
AND enrollments.course_id = marks.course_id
GROUP BY courses.course_name
HAVING COUNT(enrollments.student_id) >= 3
ORDER BY AVG(marks.marks) DESC;

-- QUESTION 4: Retrieve students whose individual marks are greater than the overall average marks using a scalar subquery.
SELECT students.name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
WHERE marks.marks > (
SELECT AVG(marks) AS avg_marks
FROM marks
);

-- QUESTION 5: Generate a teacher-wise report showing the number of distinct students enrolled in their assigned courses.
SELECT teachers.teacher_id, teachers.teacher_name, COUNT(DISTINCT enrollments.student_id) AS enrolled_students
FROM teachers
LEFT JOIN course_teachers
ON teachers.teacher_id = course_teachers.teacher_id
LEFT JOIN enrollments
ON course_teachers.course_id = enrollments.course_id
GROUP BY teachers.teacher_id, teachers.teacher_name;
