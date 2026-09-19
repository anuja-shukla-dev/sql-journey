USE topper_sql;

-- ============================================
-- DAY 8: PRIMARY KEY & FOREIGN KEY
-- ============================================

-- View existing tables
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollments;


-- ============================================
-- PRIMARY KEY & FOREIGN KEY RELATIONSHIP
-- ============================================

-- students.student_id → Primary Key
-- courses.course_id → Primary Key
-- enrollments.enrollment_id → Primary Key
-- enrollments.student_id → Foreign Key
-- enrollments.course_id → Foreign Key


-- Check the table structure and constraints
SHOW CREATE TABLE students;
SHOW CREATE TABLE courses;
SHOW CREATE TABLE enrollments;


-- ============================================
-- VALID FOREIGN KEY
-- ============================================

-- student_id = 10 and course_id = 16
-- exist in their respective parent tables.

SET autocommit = 0;

INSERT INTO enrollments (student_id, course_id)
VALUES (10, 16);

SELECT * FROM enrollments
WHERE student_id = 10;

COMMIT;


-- ============================================
-- INVALID FOREIGN KEY: STUDENT
-- ============================================

-- This should fail because student_id = 999
-- does not exist in students.student_id.

INSERT INTO enrollments (student_id, course_id)
VALUES (999, 16);


-- ============================================
-- INVALID FOREIGN KEY: COURSE
-- ============================================

-- This should fail because course_id = 999
-- does not exist in courses.course_id.

INSERT INTO enrollments (student_id, course_id)
VALUES (10, 999);


-- ============================================
-- ON DELETE CASCADE
-- ============================================

-- enrollments.student_id references students.student_id
-- with ON DELETE CASCADE.
--
-- If a student is deleted, only that student's
-- related enrollment records are automatically deleted.
--
-- Do NOT execute the DELETE on the real project data.
-- Example:
--
-- DELETE FROM students
-- WHERE student_id = 10;


-- enrollments.course_id references courses.course_id
-- with ON DELETE CASCADE.
--
-- If a course is deleted, only enrollment records
-- associated with that course are automatically deleted.
--
-- Example:
--
-- DELETE FROM courses
-- WHERE course_id = 16;