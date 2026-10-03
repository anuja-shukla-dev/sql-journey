USE topper_sql;

-- Client Requirement
-- I want a report showing each teacher and the course(s) they teach. Include the teacher's name and course name. If a teacher isn't currently assigned to any course, they should still appear in the report.
SELECT teachers.teacher_name, courses.course_name
FROM teachers
LEFT JOIN course_teachers
ON teachers.teacher_id = course_teachers.teacher_id
LEFT JOIN courses
ON course_teachers.course_id = courses.course_id;
