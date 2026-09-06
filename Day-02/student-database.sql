USE topper_db;

-- DAY-2 STUDENT DATABASE PRACTICE

-- 1. CREATING TABLE
CREATE TABLE student(
student_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
age INT(18) NOT NULL CHECK (age>=18),
email VARCHAR(100) UNIQUE NOT NULL,
course VARCHAR(50) DEFAULT 'BCA',
marks DECIMAL(5,2) NOT NULL,
phone VARCHAR(15) NOT NULL
);

-- 2. INSERTING 4 STUDENTS
INSERT INTO student 
(name, age, email, course, marks, phone)
VALUES
('Elsa', 25, 'elsa@gmail.com', DEFAULT, 90.00, '1234567891'),
('Charlie', 21, 'charlie@example.com', 'BSc', 91.00, '9875271012'),
('Luna', 20, 'luna@example.com', DEFAULT, 99.00, '9826251082'),
('Roma', 29, 'roma@example.com', DEFAULT, 89.00, '9865025117');


-- 3. DISPLAY ALL STUDENT RECORDS 
SELECT * from student;

-- 4. DISPLAY NAME, COURSES, AND MARKS
SELECT name, course, marks from student;

-- 5. ADD A NEW COLUMN CITY
ALTER TABLE student ADD COLUMN city VARCHAR(100);

-- 6. ADD CITY INFORMATION TO EXISTING STUDENTS
UPDATE student
set city = 'Kanpur'
WHERE student_id = 1;

UPDATE student
set city = 'Delhi'
WHERE student_id = 2;

-- 7. RENAME PHONE COLUMN
ALTER TABLE student
CHANGE COLUMN phone mobile_number VARCHAR(15);

-- 8. RENAME TABLE 
RENAME TABLE student TO student_records;  

-- 9. MOVING COLUMN MOBILE NUMBER
ALTER TABLE student_records MODIFY COLUMN mobile_number VARCHAR(15) AFTER name;

-- 10. INSERT ONE MORE STUDENT AFTER ALL ALTERATIONS
INSERT INTO student_records
(name, age, email, marks, mobile_number, city)
VALUES
('Diana', 29, 'diana@gmail.com', 71.00, '9081234681', 'Mumbai');

--  11. FINAL DISPLAY
SELECT * from student_records 