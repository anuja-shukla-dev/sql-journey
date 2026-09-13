USE topper_sql;

-- 1. AGGREGATE FUNCTIONS

-- SELECT COUNT(name) AS total_students FROM students;
-- SELECT COUNT(course_name) AS total_course FROM courses;
-- SELECT COUNT(teacher_name) AS total_teachers FROM teachers;
-- SELECT AVG(age) AS avg_age FROM students;
-- SELECT MIN(age) AS youngest_student FROM students;
-- SELECT MAX(age) AS oldest_student FROM students;
-- SELECT MAX(marks) AS highest_marks FROM marks;
-- SELECT MIN(marks) AS lowest_student FROM marks;
-- SELECT AVG(marks) AS avg_marks FROM marks;
-- SELECT SUM(marks) AS sum_marks FROM marks;

-- 2. GROUP BY

-- SELECT gender, COUNT(name)
-- FROM students
-- GROUP BY gender;

-- SELECT gender, AVG(age)
-- FROM students
-- GROUP BY gender;

-- SELECT course_id, COUNT(enrollment_id)
-- FROM enrollments
-- GROUP BY course_id;

-- SELECT course_id, COUNT(marks)
-- FROM marks
-- GROUP BY course_id;

-- SELECT course_id, AVG(marks)
-- AS avg_marks FROM marks 
-- GROUP BY course_id;

-- SELECT course_id, MAX(marks)
-- AS max_marks FROM marks 
-- GROUP BY course_id;

-- SELECT course_id, MIN(marks)
-- AS min_marks FROM marks 
-- GROUP BY course_id;

-- SELECT course_id, SUM(marks)
-- AS total_marks FROM marks 
-- GROUP BY course_id;

-- SELECT course_id, COUNT(student_id)
-- FROM enrollments
-- GROUP BY course_id;

-- SELECT student_id, COUNT(course_id)
-- FROM enrollments
-- GROUP BY student_id;

-- 3. GROUP BY + FILTERING

-- SELECT gender, COUNT(student_id)
-- FROM students
-- WHERE gender!='Other'
-- GROUP BY gender;

-- SELECT course_id, AVG(marks)
-- AS avg_marks FROM marks 
-- WHERE marks > 85
-- GROUP BY course_id;

-- SELECT course_id, COUNT(marks)
-- FROM marks WHERE marks > 90
-- GROUP BY course_id;

-- SELECT course_id, SUM(marks)
-- FROM marks where marks > 85
-- GROUP BY course_id;

-- SELECT gender, AVG(age)
-- FROM students WHERE age > 19
-- GROUP BY gender;

-- SELECT MAX(marks) - MIN(marks) 
-- AS diff_marks FROM marks;

-- SELECT ROUND(marks, 2) 
-- AS rounded_marks FROM marks;

-- SELECT COUNT(DISTINCT student_id) FROM marks;

-- SELECT COUNT(DISTINCT course_id) FROM marks;

-- SELECT student_id, AVG(marks)
-- FROM marks
-- GROUP BY student_id;