USE topper_sql;

-- CLIENT REQUIREMENT:
-- Generate a report showing every course, the number of students enrolled in each course, and the average marks obtained by those students.
SELECT 
courses.course_name, COUNT(students.student_id) AS total_students, AVG(marks.marks) AS average_marks
FROM courses
JOIN marks
ON courses.course_id = marks.course_id
JOIN students
ON marks.student_id = students.student_id
GROUP BY courses.course_name;

