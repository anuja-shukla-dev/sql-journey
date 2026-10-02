USE topper_sql;

-- ============================================
-- UNION QUERIES
-- ============================================

-- QUESTION 1
-- Create a combined list containing student names and teacher names. The result should have one column containing all names.
SELECT name FROM students
UNION
SELECT teacher_name FROM teachers;

-- QUESTION 2
-- Create a combined list of all student emails and teacher emails. Duplicate email addresses should appear only once.
SELECT email FROM students
UNION
SELECT email from teachers;

-- QUESTION 3
-- Create a combined list of all student emails and teacher emails. Keep duplicate email addresses if any exist.
SELECT email FROM students
UNION ALL
SELECT email FROM teachers;

-- QUESTION 4
-- Create a combined list of all people in the academic system, showing their name and role.
-- Student names should have the role 'Student' and teacher names should have the role 'Teacher'.
SELECT name, 'Student' AS role
FROM students
UNION
SELECT teacher_name, 'Teacher' AS role
FROM teachers;

-- QUESTION 5
-- Create a combined list of all people in the system with their name and email.
-- Students should appear with role 'Student' and teachers with role 'Teacher'.
SELECT name, email, 'Student' AS role
FROM students
UNION
SELECT teacher_name, email, 'Teacher' AS role
FROM teachers;


-- QUESTION 6
-- Generate a combined list of:
-- 1. Students who are enrolled in courses
-- 2. Teachers who are assigned to courses
-- Display the person's name and a suitable role indicating whether they are a Student or Teacher.
SELECT name, 'Student' AS role
FROM students
JOIN enrollments
ON students.student_id = enrollments.student_id
UNION
SELECT teacher_name, 'Teacher' AS role
FROM teachers
JOIN course_teachers
ON teachers.teacher_id = course_teachers.teacher_id;

-- QUESTION 7
-- Create a consolidated list of all course IDs appearing in the enrollment system and the teacher-assignment system.
-- Each course ID should appear only once.
SELECT course_id FROM enrollments
UNION 
SELECT course_id FROM course_teachers;

QUESTION 8
Create a consolidated list of course IDs from:
1. Student enrollments
2. Teacher assignments
Keep duplicate course IDs in the final result.
SELECT course_id FROM enrollments
UNION ALL
SELECT course_id FROM course_teachers;

-- QUESTION 9
-- Generate a report showing all people who are connected to the academic system.
-- Display:
-- name, email, role
-- Include both students and teachers.
SELECT name, email, 'Student' AS role
FROM students
UNION
SELECT teacher_name, email, 'Teacher' AS role
FROM teachers;

-- QUESTION 10 
-- Generate a consolidated contact list for the academic system.
-- Display:
-- name, email, role
-- Include:
-- Students, Teachers
-- Sort the final combined result alphabetically by name.
SELECT name, email, 'Student' AS role
FROM students
UNION
SELECT teacher_name, email, 'Teacher' AS role
FROM teachers
ORDER BY name ASC;