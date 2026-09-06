CREATE DATABASE IF NOT EXISTS sql_journey;
USE sql_journey;

-- CREATE TABLE
CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- INSERTING DATA
INSERT INTO users (name, email, gender, date_of_birth, salary)
VALUES
('Ananya Sharma', 'ananya.sharma@gmail.com', 'Female', '2002-05-14', 45000.00),
('Rahul Verma', 'rahul.verma@gmail.com', 'Male', '2001-08-22', 52000.50),
('Priya Singh', 'priya.singh@gmail.com', 'Female', '2003-01-10', 38000.00),
('Arjun Mehta', 'arjun.mehta@gmail.com', 'Male', '2000-11-05', 67000.75),
('Neha Gupta', 'neha.gupta@gmail.com', 'Female', '2002-07-19', 41000.25),
('Rohan Kumar', 'rohan.kumar@gmail.com', 'Male', '1999-03-27', 75000.00),
('Sneha Mishra', 'sneha.mishra@gmail.com', 'Female', '2001-12-11', 56000.50),
('Aditya Joshi', 'aditya.joshi@gmail.com', 'Male', '2003-06-30', 35000.00),
('Kavya Patel', 'kavya.patel@gmail.com', 'Female', '2002-09-17', 48000.75),
('Vivek Tiwari', 'vivek.tiwari@gmail.com', 'Male', '1998-10-08', 82000.00),
('Simran Kapoor', 'simran.kapoor@gmail.com', 'Female', '2000-04-21', 61000.25),
('Aman Yadav', 'aman.yadav@gmail.com', 'Male', '2001-02-15', 44000.00),
('Ishita Roy', 'ishita.roy@gmail.com', 'Female', '2003-11-25', 37000.50),
('Kunal Saxena', 'kunal.saxena@gmail.com', 'Male', '1999-07-03', 69500.00),
('Aarav Khan', 'aarav.khan@gmail.com', 'Other', '2002-12-29', 53000.75);

-- QUERYING DATA

SELECT * FROM users;

-- WHERE CLAUSE
SELECT * FROM users WHERE gender = 'Female';
SELECT * FROM users WHERE gender <> 'Female';
SELECT * FROM users WHERE id > 10;
SELECT * FROM users WHERE date_of_birth IS NOT NULL;
SELECT * FROM users WHERE date_of_birth BETWEEN '2002-10-02' AND '2010-12-12';
SELECT * FROM users WHERE gender IN ('Male', 'Female');
SELECT * FROM users WHERE gender = 'Female' AND salary > 30000;
SELECT * FROM users WHERE gender = 'Male' OR salary < 65000;

-- ORDER BY
SELECT * FROM users
WHERE gender = 'Male' OR salary < 65000
ORDER BY date_of_birth ASC;

SELECT * FROM users
WHERE gender = 'Male' OR salary < 65000
ORDER BY date_of_birth DESC;

-- LIMIT
SELECT * FROM users
WHERE gender = 'Male' OR salary < 65000
LIMIT 5;