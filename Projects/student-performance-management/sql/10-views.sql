USE topper_sql;

-- ============================================
-- VIEW QUERIES
-- ============================================

-- QUESTION 1
-- Display student names, emails, and their enrolled courses.
CREATE VIEW student_info AS
SELECT students.name, students.email, courses.course_name
FROM students
JOIN enrollments
ON students.student_id = enrollments.student_id
JOIN courses
ON enrollments.course_id = courses.course_id;

SELECT * FROM student_info;

-- QUESTION 2
-- Create a reusable student performance report.
CREATE VIEW student_performance_report AS
SELECT students.name, courses.course_name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id;

SELECT * FROM student_performance_report;

-- QUESTION 3
-- Calculate the average marks for each course.
CREATE VIEW course_avg_marks AS
SELECT courses.course_name, AVG(marks.marks) AS avg_marks
FROM courses
JOIN marks
ON courses.course_id = marks.course_id
GROUP BY courses.course_name;

SELECT * FROM course_avg_marks;

-- QUESTION 4
-- Create a complete performance report with student, course, marks, and teacher.
CREATE VIEW complete_performance_report AS
SELECT students.name AS student_name, courses.course_name, marks.marks, teachers.teacher_name 
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id
JOIN course_teachers
ON courses.course_id = course_teachers.course_id
JOIN teachers
ON course_teachers.teacher_id = teachers.teacher_id;

SELECT * FROM complete_performance_report;

-- QUESTION 5
-- Count the number of students enrolled in each course.
CREATE VIEW course_enrollment_report AS
SELECT courses.course_name, COUNT(students.student_id) AS student_count
FROM courses
JOIN enrollments
ON courses.course_id = enrollments.course_id
JOIN students
ON enrollments.student_id = students.student_id
GROUP BY courses.course_name;

SELECT * FROM course_enrollment_report;

-- QUESTION 6
-- Display students who scored more than 90 marks.
CREATE VIEW high_marks_scorers AS
SELECT students.name, courses.course_name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id
WHERE marks.marks > 90;

SELECT * FROM high_marks_scorers;

-- QUESTION 7
-- Display teachers and their assigned courses.
CREATE VIEW teacher_course_assignment AS
SELECT teachers.teacher_name, teachers.email, courses.course_name
FROM teachers
JOIN course_teachers
ON teachers.teacher_id = course_teachers.teacher_id
JOIN courses
ON course_teachers.course_id = courses.course_id;

SELECT * FROM teacher_course_assignment;

-- QUESTION 8
-- Create a course-wise performance summary.
CREATE VIEW course_performance_summary AS
SELECT courses.course_name, COUNT(students.student_id) AS student_count, AVG(marks.marks) AS avg_marks,
MAX(marks.marks) AS highest_marks, MIN(marks.marks) AS lowest_marks
FROM courses
JOIN marks
ON courses.course_id = marks.course_id
JOIN students
ON marks.student_id = students.student_id
GROUP BY courses.course_name;

SELECT * FROM course_performance_summary;
