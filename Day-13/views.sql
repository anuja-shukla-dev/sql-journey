USE topper_sql;

-- QUESTION 1
-- Create a view showing basic student information.
CREATE VIEW student_basic_info AS
SELECT name, student_id, gender
FROM students;

SELECT * FROM student_basic_info;

-- QUESTION 2
-- Create a view showing students who scored 50 or above.
CREATE VIEW passing_students AS
SELECT students.student_id, students.name, marks.marks
FROM marks
JOIN students
ON marks.student_id = students.student_id
WHERE marks.marks >= 50;

SELECT * FROM passing_students;

-- QUESTION 3
-- Create a view showing course IDs and course names.
CREATE VIEW course_info AS
SELECT course_id, course_name
FROM courses; 

SELECT * FROM course_info;

-- QUESTION 4
-- Create a view showing students who scored 80 or above.
CREATE VIEW high_scorers AS
SELECT students.name, marks.marks
FROM marks
JOIN students
ON marks.student_id = students.student_id
WHERE marks.marks >= 80;

SELECT * FROM high_scorers;

-- QUESTION 5
-- Create a view showing students aged 18 or above.
CREATE VIEW adult_students AS
SELECT student_id, name, age
FROM students
WHERE age >= 18;

SELECT * FROM adult_students;

-- QUESTION 6
-- Create a view showing students and their enrolled courses.
CREATE VIEW student_course_details AS
SELECT students.name, courses.course_name
FROM students
JOIN enrollments
    ON students.student_id = enrollments.student_id
JOIN courses
    ON enrollments.course_id = courses.course_id;

SELECT * FROM student_course_details;

-- QUESTION 7
-- Create a view showing students, courses, and their marks.
CREATE VIEW student_marks_report AS
SELECT students.name, courses.course_name, marks.marks 
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id;

SELECT * FROM student_marks_report;

-- QUESTION 8
-- Retrieve students who scored above 75 using a view.
SELECT name, marks
FROM student_marks_report
WHERE marks > 75;

-- QUESTION 9
-- Retrieve students and courses where marks are 90 or above.
SELECT name, course_name
FROM student_marks_report
WHERE marks >= 90;

-- QUESTION 10
-- Find students who achieved the highest marks using a subquery.
SELECT name, marks AS max_marks
FROM student_marks_report
WHERE marks = 
(SELECT MAX(marks) 
FROM student_marks_report);

-- QUESTION 11
-- Modify the high_scorers view to include marks of 85 or above.
CREATE OR REPLACE VIEW high_scorers AS
SELECT students.name, marks.marks
FROM marks
JOIN students
ON marks.student_id = students.student_id
WHERE marks >= 85;

SELECT * FROM high_scorers;

-- QUESTION 
-- Drop the course_info view.
DROP VIEW course_info;