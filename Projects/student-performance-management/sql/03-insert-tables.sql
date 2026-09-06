USE topper_sql;

-- DESCRIBE students;
-- ALTER TABLE students
-- DROP course;
-- DESCRIBE students;

-- INSERT INTO students(name, email, age, gender) VALUES
-- ('Aarav Sharma', 'aarav.sharma@example.com', 20, 'Male'),
-- ('Ananya Verma', 'ananya.verma@example.com', 19, 'Female'),
-- ('Rohan Gupta', 'rohan.gupta@example.com', 23, 'Male'),
-- ('Priya Singh', 'priya.singh@example.com', 20, 'Female'),
-- ('Aditya Mishra', 'aditya.mishra@example.com', 22, 'Male'),
-- ('Sneha Kapoor', 'sneha.kapoor@example.com', 19, 'Female'),
-- ('Arjun Mehta', 'arjun.mehta@example.com', 21, 'Male'),
-- ('Kavya Joshi', 'kavya.joshi@example.com', 20, 'Female'),
-- ('Rahul Tiwari', 'rahul.tiwari@example.com', 23, 'Male'),
-- ('Neha Agarwal', 'neha.agarwal@example.com', 19, 'Female'),
-- ('Vivek Pandey', 'vivek.pandey@example.com', 22, 'Male'),
-- ('Ishita Saxena', 'ishita.saxena@example.com', 20, 'Female'),
-- ('Kunal Yadav', 'kunal.yadav@example.com', 21, 'Male'),
-- ('Simran Chawla', 'simran.chawla@example.com', 19, 'Female'),
-- ('Dev Malhotra', 'dev.malhotra@example.com', 22, 'Male'),
-- ('Riya Bansal', 'riya.bansal@example.com', 20, 'Female'),
-- ('Manish Kumar', 'manish.kumar@example.com', 23, 'Male'),
-- ('Pooja Srivastava', 'pooja.srivastava@example.com', 21, 'Female'),
-- ('Nikhil Raj', 'nikhil.raj@example.com', 20, 'Male'),
-- ('Meera Nair', 'meera.nair@example.com', 22, 'Female');

-- SELECT * FROM students;

-- INSERT INTO courses (course_name, course_duration)
-- VALUES
-- ('Python Programming', 6),
-- ('SQL and Database Management', 5),
-- ('Data Structures and Algorithms', 6),
-- ('Web Development', 4),
-- ('Software Engineering', 5);

-- DELETE FROM courses
-- WHERE course_id > 0;
-- SELECT * FROM courses;

-- INSERT INTO teachers (teacher_name, email, subject)
-- VALUES
-- ('Rajesh Verma', 'rajesh.verma@example.com', 'Python Programming'),
-- ('Neha Sharma', 'neha.sharma@example.com', 'SQL and Database Management'),
-- ('Amit Tiwari', 'amit.tiwari@example.com', 'Data Structures and Algorithms'),
-- ('Pooja Mehta', 'pooja.mehta@example.com', 'Web Development'),
-- ('Sandeep Gupta', 'sandeep.gupta@example.com', 'Software Engineering'),
-- ('Anjali Kapoor', 'anjali.kapoor@example.com', 'Python Programming'),
-- ('Vikram Singh', 'vikram.singh@example.com', 'Data Structures and Algorithms'),
-- ('Ritu Agarwal', 'ritu.agarwal@example.com', 'SQL and Database Management');

-- SELECT * FROM teachers;

-- INSERT INTO enrollments (student_id, course_id)
-- VALUES
-- (1, 16),
-- (1, 17),
-- (2, 16),
-- (2, 18),
-- (3, 17),
-- (3, 19),
-- (4, 16),
-- (4, 20),
-- (5, 18),
-- (5, 20),
-- (6, 17),
-- (6, 19),
-- (7, 16),
-- (7, 18),
-- (8, 19),
-- (8, 20),
-- (9, 17),
-- (9, 18),
-- (10, 16),
-- (10, 20),
-- (11, 18),
-- (11, 19),
-- (12, 16),
-- (13, 17),
-- (14, 20);

-- SELECT * FROM enrollments;

-- INSERT INTO marks (student_id, course_id, marks)
-- VALUES
-- (1, 16, 92.50),
-- (1, 17, 88.00),
-- (2, 16, 95.00),
-- (2, 18, 91.50),
-- (3, 17, 84.00),
-- (3, 19, 89.50),
-- (4, 16, 90.00),
-- (4, 20, 86.50),
-- (5, 18, 93.00),
-- (5, 20, 88.50),
-- (6, 17, 87.00),
-- (6, 19, 91.00),
-- (7, 16, 96.00),
-- (7, 18, 94.50),
-- (8, 19, 85.00),
-- (8, 20, 90.50),
-- (9, 17, 82.50),
-- (9, 18, 89.00),
-- (10, 16, 94.00),
-- (10, 20, 92.00),
-- (11, 18, 88.00),
-- (11, 19, 93.50),
-- (12, 16, 91.00),
-- (13, 17, 86.50),
-- (14, 20, 95.00);

-- SELECT * FROM marks;

INSERT INTO course_teachers (teacher_id, course_id)
VALUES
(1, 16),
(6, 16),
(2, 17),
(8, 17),
(3, 18),
(7, 18),
(4, 19),
(5, 20);

SELECT * FROM course_teachers;