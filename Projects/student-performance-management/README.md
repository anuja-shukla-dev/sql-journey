# Student Performance Management System

A SQL-based database project designed to manage students, courses, teachers, enrollments, and student performance.

This project is being developed alongside my SQL learning journey, so the database will gradually evolve as I learn new SQL concepts.

## 📌 Project Overview

The Student Performance Management System stores and manages:

- Student information
- Course information
- Teacher information
- Student course enrollments
- Student marks
- Teacher-course assignments

The project uses relational database concepts such as Primary Keys, Foreign Keys, Constraints, and Junction Tables.

## 🗂️ Project Structure

student-performance-management/
│
├── sql/
│   ├── 01-create-database.sql
│   ├── 02-create-tables.sql
│   ├── 03-insert-tables.sql
│   ├── 04-basic-queries.sql
│   └── 05-aggregate-groupby-queries.sql
│
└── README.md

## 🗄️ Database Tables

### 1. Students

Stores information about students.

Columns:
- student_id
- name
- email
- age
- gender

### 2. Courses

Stores available courses.

Columns:
- course_id
- course_name
- course_duration

### 3. Teachers

Stores information about teachers.

Columns:
- teacher_id
- teacher_name
- email
- subject

### 4. Enrollments

Connects students with courses.

This table represents the many-to-many relationship between students and courses.

Columns:
- enrollment_id
- student_id
- course_id

### 5. Marks

Stores the marks obtained by students in different courses.

Columns:
- marks_id
- student_id
- course_id
- marks

### 6. Course Teachers

Connects teachers with courses.

This table represents the many-to-many relationship between courses and teachers.

Columns:
- course_teacher_id
- teacher_id
- course_id

## 🔗 Relationships

- Students ↔ Courses → Many-to-Many through `enrollments`
- Students → Marks → One-to-Many
- Courses → Marks → One-to-Many
- Courses ↔ Teachers → Many-to-Many through `course_teachers`

## 🛠️ SQL Concepts Used

- CREATE DATABASE
- CREATE TABLE
- Data Types
- PRIMARY KEY
- AUTO_INCREMENT
- NOT NULL
- UNIQUE
- CHECK
- ENUM
- INSERT
- SELECT
- WHERE
- BETWEEN
- ORDER BY
- ASC / DESC
- AND / OR
- ALTER TABLE
- Foreign Keys
- ON DELETE CASCADE
- SQL Functions
- String Functions
- Numeric Functions
- Date and Time Functions
- Aggregate Functions
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()
- DISTINCT
- GROUP BY
- Relational Database Design

## 📊 Current Dataset

The database currently contains sample data for:

- 20 Students
- 5 Courses
- 8 Teachers
- 25 Enrollments
- 25 Marks
- Course-teacher assignments

## 🔎 Current Queries

The project currently contains queries for:

### Basic Queries

The `04-basic-queries.sql` file contains queries for:

- Displaying records
- Selecting specific columns
- Filtering records using `WHERE`
- Filtering using `BETWEEN`
- Combining conditions using `AND / OR`
- Sorting records using `ORDER BY`
- Sorting using `ASC / DESC`

Queries are written for students, courses, teachers, marks, and enrollments.

### Aggregate and GROUP BY Queries

The `05-aggregate-groupby-queries.sql` file contains queries for:

- Counting records using `COUNT()`
- Calculating totals using `SUM()`
- Calculating averages using `AVG()`
- Finding maximum values using `MAX()`
- Finding minimum values using `MIN()`
- Using `DISTINCT`
- Grouping data using `GROUP BY`
- Filtering grouped analysis using `WHERE`
- Performing calculations using aggregate functions
- Rounding values using `ROUND()`

These queries are used to analyze student, course, enrollment, and marks data.

## 🚀 Future Improvements

As I learn more SQL concepts, I will extend this project with:

- HAVING
- JOINs
- Subqueries
- Advanced analytical queries
- More meaningful performance reports
- Additional SQL scripts as the project grows

## 🎯 Purpose

This project is part of my SQL learning journey and is focused on learning by building a practical relational database rather than only practicing isolated SQL queries.

The project is intentionally growing alongside my SQL knowledge. Each new SQL concept I learn gives me an opportunity to add new queries and improve the project.

More features and SQL concepts will be added as my learning continues.