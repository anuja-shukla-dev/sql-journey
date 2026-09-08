USE topper_sql;

-- CREATE TABLE users(
-- id INT AUTO_INCREMENT PRIMARY KEY,
-- name VARCHAR(100) NOT NULL,
-- age INT CHECK (age>=18) NOT NULL,
-- city VARCHAR(50) NOT NULL,
-- course VARCHAR(100) DEFAULT 'BCA'
-- );

-- INSERT INTO users 
-- (name, age, city)
-- VALUES
-- ('Harry', 20, 'Kanpur'),
-- ('Riya', 21, 'Delhi'),
-- ('Aman', 22, 'Lucknow'),
-- ('Rahul', 20, 'Kanpur'),
-- ('Neha', 23, 'Delhi');

-- SELECT * FROM users;

-- UPDATE users SET city='Lucknow' WHERE name='Harry';
-- UPDATE users SET age=23 WHERE name='Aman';
-- UPDATE users SET course='MCA' WHERE name='Rahul';
-- DELETE FROM users WHERE id=5;
-- DELETE FROM users WHERE name='Rahul';
-- UPDATE users SET city='Noida' WHERE city='Delhi';
-- UPDATE users SET age=age+1;
-- UPDATE users SET course='BBA' WHERE age>22;
-- DELETE FROM users WHERE city='Noida';
-- DELETE FROM users WHERE age>22;
SELECT * FROM users;


