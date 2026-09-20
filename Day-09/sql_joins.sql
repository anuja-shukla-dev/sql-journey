USE topper_sql;

-- CREATE TABLE 'join_employees'
CREATE TABLE join_employees(
emp_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
dept_id INT NOT NULL
);

-- CREATE TABLE 'join_departments'
CREATE TABLE join_departments(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50) NOT NULL
);

-- INSERTING DATA INTO 'join_employees'
INSERT INTO join_employees VALUES
(1, 'Rahul', 10),
(2, 'Riya', 20),
(3, 'Aman', 30),
(4, 'Neha', 40),
(5, 'Karan', 50);

-- INSERTING DATA INTO 'join_departments'
INSERT INTO join_departments VALUES
(10, 'HR'),
(20, 'IT'),
(30, 'Finance'),
(60, 'Marketing');

-- INNER JOIN
SELECT join_employees.name, join_departments.dept_name
FROM join_employees
INNER JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id;

-- LEFT JOIN
SELECT join_employees.name, join_departments.dept_name
FROM join_employees
LEFT JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id;

-- RIGHT JOIN
SELECT join_employees.name, join_departments.dept_name
FROM join_employees
RIGHT JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id;

-- INNER JOIN + MULTIPLE COLUMNS
SELECT join_employees.name, join_employees.emp_id, join_departments.dept_id, join_departments.dept_name
FROM join_employees
INNER JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id;

-- INNER JOIN + MULTIPLE COLUMNS
SELECT join_departments.dept_id, join_departments.dept_name, join_employees.name 
FROM join_employees
RIGHT JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id;
