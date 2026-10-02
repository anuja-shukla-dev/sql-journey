# Student Performance Management System

A SQL-based relational database project designed to manage students, courses, teachers, enrollments, and student performance.

This project is being developed alongside my SQL learning journey, with each new SQL concept being applied to a practical database and reporting requirement.

---

## Project Overview

The Student Performance Management System stores and manages:

- Student information
- Course information
- Teacher information
- Student course enrollments
- Student marks
- Teacher-course assignments

The project demonstrates relational database concepts such as:

- Primary Keys
- Foreign Keys
- Constraints
- Many-to-Many relationships
- Junction tables
- Data retrieval and filtering
- Data aggregation and analysis
- Multi-table reporting

---

##  Project Structure

student-performance-management/
│
├── sql/
│   ├── README.md
│   ├── 01-create-database.sql
│   ├── 02-create-tables.sql
│   ├── 03-insert-tables.sql
│   ├── 04-basic-queries.sql
│   ├── 05-aggregate-groupby-queries.sql
│   ├── 06-joins.sql
│   ├── 07-union.sql
│   ├── 08-self-join.sql
│   ├── 09-join-union.sql
│   ├── 10-views.sql
│   ├── 11-indexes.sql
│   └── 12-subqueries.sql
│
└── README.md

---

## Database Tables

### 1. Students

Stores information about students.

**Columns:**

- `student_id`
- `name`
- `email`
- `age`
- `gender`

### 2. Courses

Stores available courses.

**Columns:**

- `course_id`
- `course_name`
- `course_duration`

### 3. Teachers

Stores information about teachers.

**Columns:**

- `teacher_id`
- `teacher_name`
- `email`
- `subject`

### 4. Enrollments

Connects students with courses.

This table represents the **many-to-many relationship** between students and courses.

**Columns:**

- `enrollment_id`
- `student_id`
- `course_id`

### 5. Marks

Stores the marks obtained by students in different courses.

**Columns:**

- `marks_id`
- `student_id`
- `course_id`
- `marks`

### 6. Course Teachers

Connects teachers with courses.

This table represents the **many-to-many relationship** between courses and teachers.

**Columns:**

- `course_teacher_id`
- `teacher_id`
- `course_id`

---

## Relationships

- **Students ↔ Courses** → Many-to-Many through `enrollments`
- **Students → Marks** → One-to-Many
- **Courses → Marks** → One-to-Many
- **Courses ↔ Teachers** → Many-to-Many through `course_teachers`

---

## SQL Concepts Used

### Database Design

- CREATE DATABASE
- CREATE TABLE
- Data Types
- PRIMARY KEY
- AUTO_INCREMENT
- NOT NULL
- UNIQUE
- CHECK
- ENUM
- Foreign Keys
- ON DELETE CASCADE
- ALTER TABLE

### Data Manipulation & Retrieval

- INSERT
- SELECT
- WHERE
- BETWEEN
- AND / OR
- ORDER BY
- ASC / DESC
- DISTINCT

### SQL Functions & Analysis

- String Functions
- Numeric Functions
- Date and Time Functions
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()
- ROUND()
- GROUP BY

### Advanced Querying

- INNER JOIN
- LEFT JOIN
- Multiple-table JOINs
- SELF JOIN
- UNION
- UNION ALL
- Subqueries
- Correlated Subqueries
- IN
- EXISTS

### Database Optimization & Reusability

- Views
- Indexes
- Composite Indexes

---

## Current Dataset

The database currently contains sample data for:

- **20 Students**
- **5 Courses**
- **8 Teachers**
- **25 Enrollments**
- **25 Marks**
- **Course-teacher assignments**

---

## Current SQL Scripts

### Basic Queries

`04-basic-queries.sql`

Contains queries for:

- Retrieving records
- Selecting specific columns
- Filtering using `WHERE`
- Filtering using `BETWEEN`
- Combining conditions using `AND / OR`
- Sorting using `ORDER BY`
- Sorting using `ASC / DESC`

### Aggregate & GROUP BY Queries

`05-aggregate-groupby-queries.sql`

Contains queries for:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MAX()`
- `MIN()`
- `DISTINCT`
- `GROUP BY`
- Filtering data before aggregation
- Aggregate calculations
- `ROUND()`

### JOIN Queries

`06-joins.sql`

Contains multi-table queries for:

- Student-course information
- Student performance reports
- Course-wise performance
- Teacher-course assignments
- High-scoring students
- Course enrollment analysis
- Performance reporting

### UNION Queries

`07-union.sql`

Demonstrates:

- `UNION`
- `UNION ALL`
- Combining student and teacher data
- Consolidating results from different tables
- Sorting combined results

### SELF JOIN Queries

`08-self-join.sql`

Demonstrates:

- Comparing rows within the same table
- Finding students with matching attributes
- Comparing student ages and genders
- Avoiding duplicate row pairs

### JOIN + UNION Queries

`09-join-union.sql`

Contains project-oriented queries combining `JOIN` and `UNION` to create consolidated reports involving:

- Students
- Teachers
- Courses
- Emails
- Academic roles

### Views

`10-views.sql`

Contains reusable database views for:

- Student information
- Student performance
- Course average marks
- Complete performance reports
- Course enrollment reports
- High-mark scorers
- Teacher-course assignments
- Course performance summaries

### Indexes

`11-indexes.sql`

Demonstrates:

- Creating indexes
- Viewing indexes
- Removing indexes
- Single-column indexes
- Composite indexes

### Subqueries

`12-subqueries.sql`

Demonstrates:

- Scalar subqueries
- Subqueries with `IN`
- Correlated subqueries
- `EXISTS`
- Aggregate functions inside subqueries
- Comparing values with calculated results
- Finding highest marks
- Comparing student performance with course averages

---

## Execution Order

Run the scripts in the following order:

1. `01-create-database.sql`
2. `02-create-tables.sql`
3. `03-insert-tables.sql`
4. `04-basic-queries.sql`
5. `05-aggregate-groupby-queries.sql`
6. `06-joins.sql`
7. `07-union.sql`
8. `08-self-join.sql`
9. `09-join-union.sql`
10. `10-views.sql`
11. `11-indexes.sql`
12. `12-subqueries.sql`

The first three scripts create and populate the database. The remaining scripts contain queries, reports, views, and indexing exercises built on top of the project database.

> **Note:** Some scripts contain `CREATE VIEW` and `CREATE INDEX` statements. If they are executed multiple times, existing views or indexes may need to be removed or handled before recreating them.

---

## Purpose

This project is part of my SQL learning journey and focuses on **learning by building** rather than practicing isolated SQL queries.

Instead of creating unrelated examples for every SQL concept, I am applying the concepts to a single relational database and gradually expanding its capabilities.

The project currently demonstrates database design, data manipulation, querying, reporting, analysis, reusable views, indexing, and advanced subquery techniques.

---

## Project Progress

The project will continue to evolve as I learn more SQL and database concepts.

Future improvements may include:

- More advanced analytical queries
- Additional performance reports
- More realistic datasets
- Improved database design
- Advanced SQL features
- Further optimization
- Integration with a future application/backend project

The long-term goal is to turn this learning project into a more realistic **SQL-based data management and reporting system** while continuing to build practical SQL skills.