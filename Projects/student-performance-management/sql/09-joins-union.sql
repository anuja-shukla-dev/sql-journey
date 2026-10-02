USE topper_sql;

-- ============================================
-- JOINs + UNION QUERIES
-- ============================================

-- QUESTION 1
-- Combine students and teachers with their associated courses.
SELECT
students.name AS person_name, courses.course_name AS course_name, 'Student' AS role
FROM students
JOIN enrollments
ON students.student_id = enrollments.student_id
JOIN courses
ON enrollments.course_id = courses.course_id

UNION

SELECT 
teachers.teacher_name AS person_name, courses.course_name AS course_name, 'Teacher' AS role
FROM teachers
JOIN course_teachers
ON teachers.teacher_id = course_teachers.teacher_id
JOIN courses
ON course_teachers.course_id = courses.course_id;

-- QUESTION 2
-- Combine high-scoring students with teachers assigned to courses.
SELECT
students.name, courses.course_name, 'Student' AS role
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id
WHERE marks.marks > 90

UNION

SELECT 
teachers.teacher_name, courses.course_name, 'Teacher' AS role
FROM teachers
JOIN course_teachers
ON teachers.teacher_id = course_teachers.teacher_id
JOIN courses
ON course_teachers.course_id = courses.course_id;

-- QUESTION 3
-- Combine students and teachers with their emails and associated courses.
SELECT
students.name, students.email, courses.course_name, 'Student' AS role
FROM students
JOIN enrollments
ON students.student_id = enrollments.student_id
JOIN courses
ON enrollments.course_id = courses.course_id

UNION

SELECT
teachers.teacher_name, teachers.email, courses.course_name, 'Teacher' AS role
FROM teachers
JOIN course_teachers
ON teachers.teacher_id = course_teachers.teacher_id
JOIN courses
ON course_teachers.course_id = courses.course_id; 

-- QUESTION 4
-- Combine students and teachers using UNION ALL while keeping duplicate rows.
SELECT
students.name, students.email, courses.course_name, 'Student' AS role
FROM students
JOIN enrollments
ON students.student_id = enrollments.student_id
JOIN courses
ON enrollments.course_id = courses.course_id

UNION ALL

SELECT
teachers.teacher_name, teachers.email, courses.course_name, 'Teacher' AS role
FROM teachers
JOIN course_teachers
ON teachers.teacher_id = course_teachers.teacher_id
JOIN courses
ON course_teachers.course_id = courses.course_id; 

-- QUESTION 5
-- Create a course-wise list of all students and teachers.
SELECT 
courses.course_name AS course_name, students.name AS person_name, 'Student' AS role
FROM courses
JOIN enrollments
ON courses.course_id = enrollments.course_id
JOIN students
ON enrollments.student_id = students.student_id

UNION

SELECT
courses.course_name AS course_name, teachers.teacher_name AS person_name, 'Teacher' AS role
FROM courses
JOIN course_teachers
ON courses.course_id = course_teachers.course_id
JOIN teachers
ON course_teachers.teacher_id = teachers.teacher_id

ORDER BY course_name;

-- QUESTION 6
-- Combine students and teachers only for courses with student enrollments.
SELECT 
courses.course_name AS course_name, students.name AS person_name, 'Student' AS role
FROM courses
JOIN enrollments
ON courses.course_id = enrollments.course_id
JOIN students
ON enrollments.student_id = students.student_id

UNION

SELECT
courses.course_name AS course_name, teachers.teacher_name AS person_name, 'Teacher' AS role
FROM courses
JOIN course_teachers
ON courses.course_id = course_teachers.course_id
JOIN teachers
ON course_teachers.teacher_id = teachers.teacher_id
JOIN enrollments
ON courses.course_id = enrollments.course_id;


--  QUESTION 7
-- Create a consolidated academic directory of students and teachers by course.
SELECT
students.name AS person_name, students.email AS email, courses.course_name AS course_name, 'Student' AS role
FROM students
JOIN enrollments
ON students.student_id = enrollments.student_id
JOIN courses
ON enrollments.course_id = courses.course_id

UNION

SELECT DISTINCT
teachers.teacher_name AS person_name, teachers.email AS email, courses.course_name AS course_name, 'Teacher' AS role
FROM teachers
JOIN course_teachers
ON teachers.teacher_id = course_teachers.teacher_id
JOIN courses
ON course_teachers.course_id = courses.course_id
ORDER BY course_name, person_name;
