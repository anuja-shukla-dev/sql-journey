USE topper_sql;

-- STUDENTS
SELECT * FROM students;
SELECT name, email FROM students; 
SELECT * FROM students WHERE age=20;
SELECT * FROM students WHERE age>20;
SELECT * FROM students WHERE gender='Female';
SELECT * FROM students WHERE age BETWEEN 19 AND 21;

-- COURSES
SELECT * FROM courses;
SELECT course_name, course_duration FROM courses; 
SELECT * FROM courses WHERE course_duration=5;
SELECT * FROM courses WHERE course_duration>5;

-- TEACHERS
SELECT * FROM teachers;
SELECT teacher_name, email FROM teachers;
SELECT * FROM teachers WHERE subject='Python Programming';
SELECT * FROM teachers WHERE subject='SQL and Database Management' 
OR subject='Data Structures and Algorithms';

-- MARKS
SELECT * FROM marks;
SELECT * FROM marks WHERE student_id=1;
SELECT * FROM marks WHERE marks>90;
SELECT * FROM marks WHERE marks<90;

-- ENROLLMENTS
SELECT * FROM enrollments;
SELECT * FROM enrollments WHERE student_id=1;
SELECT * FROM enrollments WHERE course_id=16;

-- ORDER BY
SELECT * FROM students ORDER BY age ASC;
SELECT * FROM marks ORDER BY marks DESC;