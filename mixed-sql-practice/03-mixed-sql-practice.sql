USE topper_sql;

-- QUESTION 1: Find the course with the highest average marks.
SELECT courses.course_name, AVG(marks.marks) AS Average_Marks
FROM courses
JOIN marks
ON courses.course_id = marks.course_id
GROUP BY courses.course_name, courses.course_id
ORDER BY AVG(marks.marks) DESC
LIMIT 1;

-- QUESTION 2: Find students who are not enrolled in any course.
SELECT students.name
FROM students
LEFT JOIN enrollments
ON students.student_id = enrollments.student_id
WHERE enrollments.student_id IS NULL;

-- QUESTION 3: Find students scoring above the average marks of their respective courses using a correlated subquery.
SELECT students.name, courses.course_name, m.marks
FROM students
JOIN marks m 
ON students.student_id = m.student_id
JOIN courses
ON m.course_id = courses.course_id
WHERE m.marks > (
SELECT AVG(marks.marks)
FROM marks
WHERE marks.course_id = m.course_id
);

-- QUESTION 4: Find teachers assigned to more than one course.
SELECT teachers.teacher_name, COUNT(course_teachers.course_id) AS assigned_courses
FROM teachers
JOIN course_teachers
ON teachers.teacher_id = course_teachers.teacher_id
GROUP BY teachers.teacher_id, teachers.teacher_name
HAVING COUNT(course_teachers.teacher_id) > 1;

-- QUESTION 5:  Find students who obtained the second-highest distinct marks using nested subqueries.
SELECT students.name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
WHERE marks.marks = (
SELECT MAX(marks)
FROM marks
WHERE marks <> (
SELECT MAX(marks)
FROM marks
)
);