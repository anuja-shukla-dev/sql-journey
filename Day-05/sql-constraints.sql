USE topper_sql;

-- CREATE TABLE course_constraints(
-- course_id INT AUTO_INCREMENT PRIMARY KEY,
-- course_name VARCHAR(100) NOT NULL
-- );

-- INSERT INTO course_constraints (course_name)
-- VALUES
-- ('SQL'),
-- ('Data Structues and Algorithm'),
-- ('Python Programming');

SELECT * FROM course_constraints;


-- CREATE TABLE students_constraints(
-- id INT PRIMARY KEY AUTO_INCREMENT,
-- name VARCHAR(100) NOT NULL,
-- email VARCHAR(100) UNIQUE,
-- age INT CHECK (age>=18),
-- city VARCHAR(50) NOT NULL,
-- course VARCHAR(50) DEFAULT 'BCA',
-- course_id INT NOT NULL,
-- FOREIGN KEY (course_id)
-- REFERENCES course_constraints(course_id)
-- );


-- INSERT INTO students_constraints
-- (name, email, age, city, course, course_id)
-- VALUES
-- ('Vivek Pandey', 'vivek.pandey@example.com', 22, 'Kanpur', DEFAULT, 1 ),
-- ('Ishita Saxena', 'ishita.saxena@example.com', 20, 'Noida', DEFAULT, 1),
-- ('Kunal Yadav', 'kunal.yadav@example.com', 21, 'Lucknow', 'MCA', 3);
-- ('Arjun Mehta', 'arjun.mehta@example.com', 17, 'Delhi', 'MCA', 2);
-- ('Vivek Shukla', 'vivek.pandey@example.com', 22, 'Kanpur', DEFAULT, 1 );
-- ('Vivek Pandey', 'vivek.pande23y@example.com', 22, NULL, DEFAULT, 1 );
-- ('Vivek Pandey', 'vivek.pandey12@example.com', 22, 'Kanpur', DEFAULT, 99 );
-- ('Vivek Pandey', 'vivek.pandey12@example.com', 22, 'Kanpur', NULL, 1 );
SELECT * FROM students_constraints;