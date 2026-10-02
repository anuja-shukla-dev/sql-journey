USE topper_sql;

-- ============================================
-- INDEXES QUERIES
-- ============================================

-- QUESTION 1
-- Create an index on the 'gender' column of the students table.
CREATE INDEX gender_index
ON students(gender);

-- QUESTION 2
-- Create an index on the 'age' column of the students table.
CREATE INDEX age_idx
ON students(age);

-- QUESTION 3
-- Display all indexes currently created on the students table.
SHOW INDEXES FROM students;

-- QUESTION 4
-- Create an index on the 'marks' column of the marks table to improve searches based on student marks.
CREATE INDEX marks_idx
ON marks(marks);

-- QUESTION 5
-- Create a composite index on the 'student_id' and 'course_id' columns of the marks table.
CREATE INDEX student_course_id
ON marks(student_id, course_id);

-- QUESTION 6
-- Display all indexes currently created on the marks table.
SHOW INDEXES FROM marks;

-- QUESTION 7
-- Remove the index created on the 'age' column of the students table.
DROP INDEX age_idx ON students;

-- QUESTION 8
-- Remove the index created on the 'marks' column of the marks table.
DROP INDEX marks_idx ON marks;
