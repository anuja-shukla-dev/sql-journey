USE topper_sql;

-- 1- BASIC FUNCTIONS
-- SELECT UPPER(name) as upper_name FROM students;
-- SELECT LOWER(name) as lower_name FROM students;
-- SELECT name, LENGTH(name) as len_name FROM students;
-- SELECT name, email as stu_email FROM students;

-- 2- NUMERIC FUNCTIONS
-- SELECT ROUND(marks) as rounded_marks FROM marks; 
-- SELECT marks, CEIL(marks) AS ceil_marks FROM marks;
-- SELECT marks,FLOOR(marks) AS floor_marks FROM marks;
-- SELECT abs(-25);
-- SELECT ROUND(marks, 1) AS round_marks FROM marks;

-- 3- DATE FUNCTIONS
-- SELECT NOW(); 
-- SELECT CURDATE();
-- SELECT YEAR(NOW()) AS year;
-- SELECT MONTH(NOW()) AS month;
-- SELECT DAY(NOW()) AS day;

-- 4- AGGREGATE FUNCTIONS
-- SELECT COUNT(marks) FROM marks;
-- SELECT SUM(marks) AS total_marks FROM marks;
-- SELECT AVG(marks) AS avg_marks FROM marks;
-- SELECT MAX(marks) AS max_marks FROM marks;
-- SELECT MIN(marks) AS min_marks FROM marks;
-- SELECT MAX(marks) - MIN(marks) AS marks_diff FROM marks;
-- SELECT COUNT(DISTINCT student_id) FROM marks;
-- SELECT COUNT(DISTINCT course_id) FROM marks;

-- SELECT course_id, SUM(marks)
-- FROM marks
-- GROUP BY course_id;

-- SELECT course_id, AVG(marks)
-- FROM marks
-- GROUP BY course_id;

-- SELECT course_id, MAX(marks)
-- FROM marks
-- GROUP BY course_id;

-- SELECT course_id, MIN(marks)
-- FROM marks
-- GROUP BY course_id;

-- SELECT course_id, COUNT(marks)
-- FROM marks
-- GROUP BY course_id;

