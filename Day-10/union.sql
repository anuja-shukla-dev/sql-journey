USE topper_sql;

-- Create current_students table
CREATE TABLE current_students(
student_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
city VARCHAR(100) NOT NULL
);

-- Create alumni table
CREATE TABLE alumni(
alumni_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
city VARCHAR(100) NOT NULL
);

-- Set alumni AUTO_INCREMENT starting value to 101
ALTER TABLE alumni
AUTO_INCREMENT = 101;

-- Insert current student records
INSERT INTO current_students
(name, city)
VALUES
('Anu', 'Kanpur'),
('Riya', 'Delhi'),
('Aman', 'Kanpur'),
('Neha', 'Lucknow'),
('Raj', 'Delhi');

-- Insert alumni records
INSERT INTO alumni
(name, city)
VALUES
('Priya', 'Delhi'),
('Riya', 'Delhi'),
('Karan', 'Mumbai'),
('Aman', 'Kanpur');

SELECT * FROM current_students;
SELECT * FROM alumni;

-- Combine names and keep duplicates using UNION ALL
SELECT name FROM current_students
UNION ALL
SELECT name FROM alumni;

-- Combine cities and keep duplicates using UNION ALL
SELECT city FROM current_students
UNION ALL
SELECT city FROM alumni;

-- Combine cities and remove duplicates using UNION
SELECT city FROM current_students
UNION
SELECT city FROM alumni;

-- Combine names and remove duplicates using UNION
SELECT name FROM current_students
UNION
SELECT name FROM alumni;

-- Combine Kanpur students and alumni with their roles
SELECT name, city, 'Current_Student' as role FROM current_students
WHERE city = 'Kanpur'
UNION ALL
SELECT name, city, 'Alumni' as role FROM alumni
WHERE city = 'Kanpur'

-- Combine Delhi students and alumni without duplicates
SELECT name, city, 'Current_Student' as role FROM current_students
WHERE city = 'Delhi'
UNION 
SELECT name, city, 'Alumni' as role FROM alumni
WHERE city = 'Delhi'

-- Combine all students and alumni with their status
SELECT name, city, 'Current_Student' as status FROM current_students
UNION ALL
SELECT name, city, 'Alumni' as status FROM alumni;

-- Combine Delhi and Mumbai records without duplicates
SELECT name, city FROM current_students
WHERE city IN ('Delhi', 'Mumbai')
UNION
SELECT name, city FROM alumni
WHERE city IN ('Delhi', 'Mumbai');

-- Combine names and sort the final result alphabetically
SELECT name FROM current_students
UNION
SELECT name FROM alumni
ORDER BY name;

-- Count rows after combining both tables with UNION ALL
SELECT COUNT(*) AS total_rows
FROM (
    SELECT name FROM current_students

    UNION ALL

    SELECT name FROM alumni
) AS combined_students;


