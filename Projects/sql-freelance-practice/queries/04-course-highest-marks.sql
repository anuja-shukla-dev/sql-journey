USE topper_sql;

-- Client Requirement
-- I want a report showing each course and the highest marks obtained in that course. Include the course name and highest marks.
SELECT courses.course_name, MAX(marks.marks) AS highest_marks
FROM courses
JOIN marks
ON courses.course_id = marks.course_id
GROUP BY courses.course_name;