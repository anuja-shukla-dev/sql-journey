# SQL Scripts

This folder contains all SQL scripts used to build and populate the Student Performance Management System database.

## 📂 Files

### 01-create-database.sql

Creates the project database:

- `topper_sql`

### 02-create-tables.sql

Creates the six tables required for the project:

- `students`
- `courses`
- `teachers`
- `enrollments`
- `marks`
- `course_teachers`

This script also defines:

- Primary Keys
- Foreign Keys
- AUTO_INCREMENT
- NOT NULL
- UNIQUE
- CHECK
- ENUM
- ON DELETE CASCADE

### 03-insert-tables.sql

Populates the database with sample data.

Current dataset includes:

- 20 students
- 5 courses
- 8 teachers
- 25 enrollments
- 25 marks
- Course-teacher assignments

### 04-basic-queries.sql

Contains basic SQL queries used to retrieve and filter project data.

Concepts currently practiced:

- SELECT
- Selecting specific columns
- WHERE
- BETWEEN
- AND / OR
- ORDER BY
- ASC / DESC

Queries are written for:

- Students
- Courses
- Teachers
- Marks
- Enrollments

## ▶️ Execution Order

Run the scripts in the following order:

1. `01-create-database.sql`
2. `02-create-tables.sql`
3. `03-insert-tables.sql`
4. `04-basic-queries.sql`

This order ensures that the database and tables exist before data is inserted and queried.

## 🚀 Future SQL Scripts

As I learn more SQL concepts, additional scripts will be added to this folder, such as:

- Aggregate Functions
- GROUP BY
- HAVING
- JOINs
- Subqueries
- Advanced Project Queries

The project will continue to evolve alongside my SQL learning journey.