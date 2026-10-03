USE topper_sql;

-- Client Requirement:
-- Show students who scored higher than the overall average marks, with their name and marks, sorted highest to lowest.
SELECT 
students.name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
WHERE marks.marks > (
SELECT AVG(marks)
FROM marks
)
ORDER BY marks.marks DESC;