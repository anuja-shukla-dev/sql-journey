# SQL Journey - Day 03

## 📅 Day 03

Today I learned how to create a database safely, insert multiple records, query data, filter records, sort results, and limit the number of returned rows.

## 📚 Topics Learned

* CREATE DATABASE IF NOT EXISTS
* USE
* CREATE TABLE
* AUTO_INCREMENT
* PRIMARY KEY
* NOT NULL
* UNIQUE
* ENUM
* DATE
* DECIMAL
* TIMESTAMP
* DEFAULT
* INSERT INTO
* SELECT
* WHERE clause
* Comparison operators (=, <>, >)
* IS NOT NULL
* BETWEEN
* IN
* AND
* OR
* ORDER BY
* ASC
* DESC
* LIMIT

## 🗄️ Database

Created and selected the database using:

CREATE DATABASE IF NOT EXISTS sql_journey;
USE sql_journey;

## 👤 Table Created

Created a users table with the following columns:

* id
* name
* email
* gender
* date_of_birth
* salary
* created_at

## 📥 Data Insertion

Inserted 15 user records into the users table using a single INSERT INTO statement.

## 🔎 Querying Data

Practiced retrieving data using SELECT:

SELECT * FROM users;

## 🎯 WHERE Clause

Used WHERE to filter records based on conditions.

Examples practiced:

* Filtering users by gender
* Finding users with id greater than 10
* Finding users whose date_of_birth is not NULL
* Filtering users within a date range
* Filtering users based on multiple possible values

## 🔢 Comparison Operators

Practiced:

* =
* <>
* >

## ❌ IS NOT NULL

Learned how to check whether a column contains a value.

Example:

SELECT * FROM users WHERE date_of_birth IS NOT NULL;

## 📅 BETWEEN

Learned how to filter values within a specific range.

Example:

SELECT * FROM users
WHERE date_of_birth BETWEEN '2002-10-02' AND '2010-12-12';

## 📌 IN

Learned how to match a column against multiple possible values.

Example:

SELECT * FROM users
WHERE gender IN ('Male', 'Female');

## 🔗 AND

Used AND when multiple conditions need to be satisfied.

Example:

SELECT * FROM users
WHERE gender = 'Female' AND salary > 30000;

## 🔀 OR

Used OR when at least one condition should be satisfied.

Example:

SELECT * FROM users
WHERE gender = 'Male' OR salary < 65000;

## 📊 ORDER BY

Learned how to sort query results.

Ascending order:

ORDER BY date_of_birth ASC;

Descending order:

ORDER BY date_of_birth DESC;

## 🔢 LIMIT

Learned how to restrict the number of rows returned.

Example:

SELECT * FROM users
WHERE gender = 'Male' OR salary < 65000
LIMIT 5;

## 🛠️ Practice

Created a users table, inserted 15 records, and practiced different SQL queries using:

* SELECT
* WHERE
* Comparison operators
* IS NOT NULL
* BETWEEN
* IN
* AND
* OR
* ORDER BY
* LIMIT

## 🎯 Day 03 Outcome

By the end of Day 3, I can:

* Create a database using IF NOT EXISTS
* Select a database using USE
* Create tables with different data types and constraints
* Insert multiple records
* Retrieve data using SELECT
* Filter records using WHERE
* Use comparison operators
* Check NULL values
* Filter ranges using BETWEEN
* Filter multiple values using IN
* Combine conditions using AND and OR
* Sort results using ORDER BY
* Limit results using LIMIT

## 🚀 Progress

SQL Journey: Day 03 ✅

Continuing to build my SQL fundamentals through daily learning and practice.
