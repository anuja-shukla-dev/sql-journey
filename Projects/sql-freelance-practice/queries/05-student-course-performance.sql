USE topper_sql;

-- Client Requirement 
-- I want a report showing each student’s name, the number of courses they are enrolled in, and their average marks. Include students even if they have not enrolled in any course.
SELECT students.name,
COUNT(DISTINCT enrollments.course_id) AS total_courses,
(
SELECT AVG(marks.marks) 
FROM marks 
WHERE students.student_id = marks.student_id 
) AS average_marks
FROM students
LEFT JOIN enrollments
ON students.student_id = enrollments.student_id
GROUP BY students.student_id, students.name;