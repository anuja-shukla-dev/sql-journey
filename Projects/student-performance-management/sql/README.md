# SQL Scripts

This folder contains all SQL scripts used to build, populate, query, and analyze the **Student Performance Management System** database.

The scripts cover SQL concepts learned throughout my SQL journey and are organized in a logical progression from database creation to advanced querying.

---

## Files

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

Concepts practiced:

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

### 05-aggregate-groupby-queries.sql

Contains queries used to analyze project data using aggregate functions and `GROUP BY`.

Concepts practiced:

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()
- DISTINCT
- GROUP BY
- Aggregate functions with WHERE
- Aggregate calculations
- ROUND()

Queries cover:

- Student statistics
- Course statistics
- Enrollment statistics
- Marks analysis
- Gender-based analysis

### 06-joins.sql

Contains queries that combine data from multiple related tables.

Concepts practiced:

- INNER JOIN
- LEFT JOIN
- Multiple-table JOINs
- JOIN with filtering
- JOIN with aggregate functions
- JOIN with GROUP BY
- Multi-table reporting

Queries include:

- Student-course information
- Student performance reports
- Course-wise performance
- Teacher-course assignments
- High-scoring students
- Course enrollment reports

### 07-union.sql

Contains queries for combining results from multiple SELECT statements.

Concepts practiced:

- UNION
- UNION ALL
- Combining student and teacher data
- Combining related datasets
- Sorting combined results

### 08-self-join.sql

Contains queries that compare rows within the same table using a SELF JOIN.

Concepts practiced:

- SELF JOIN
- Comparing rows within the same table
- Finding students with matching attributes
- Comparing ages and genders
- Avoiding duplicate pairs

### 09-join-union.sql

Contains project-oriented queries combining JOINs with UNION operations.

Concepts practiced:

- JOIN + UNION
- JOIN + UNION ALL
- Multi-table data combination
- Role-based reporting
- Course-wise academic directories

These queries generate consolidated reports involving:

- Students
- Teachers
- Courses
- Emails
- Academic roles

### 10-views.sql

Contains SQL Views created from frequently used queries.

Concepts practiced:

- CREATE VIEW
- Retrieving data from Views
- Reusable queries
- Reporting Views

Views include:

- Student information
- Student performance
- Course average marks
- Complete performance reports
- Course enrollment reports
- High-mark scorers
- Teacher-course assignments
- Course performance summaries

### 11-indexes.sql

Contains queries for creating, viewing, and removing indexes.

Concepts practiced:

- CREATE INDEX
- SHOW INDEXES
- DROP INDEX
- Single-column indexes
- Composite indexes

Indexes are created on columns used for filtering and searching, including:

- `gender`
- `age`
- `marks`
- `student_id, course_id`

### 12-subqueries.sql

Contains queries using subqueries for more advanced data analysis.

Concepts practiced:

- Scalar subqueries
- Subqueries with IN
- Correlated subqueries
- EXISTS
- Aggregate functions inside subqueries
- Comparing values with calculated results

Queries include:

- Comparing student age with average age
- Finding highest marks
- Finding students enrolled in courses
- Comparing marks with course averages
- Finding highest-scoring students in each course
- Finding students sharing courses

---

## SQL Concepts Covered

The project currently covers:

- Database and table creation
- Data types and constraints
- Primary Keys
- Foreign Keys
- AUTO_INCREMENT
- NOT NULL
- UNIQUE
- CHECK
- ENUM
- ON DELETE CASCADE
- INSERT
- SELECT
- WHERE
- BETWEEN
- AND / OR
- ORDER BY
- Aggregate Functions
- DISTINCT
- GROUP BY
- JOINs
- SELF JOIN
- UNION
- UNION ALL
- Views
- Indexes
- Subqueries
- Correlated Subqueries
- EXISTS
- IN

---

##  Execution Order

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

This order ensures that the database and tables are created before data is inserted and the querying and analysis scripts are executed.

> **Note:** The query, view, and index scripts are learning/practice scripts. Some statements such as `CREATE VIEW` or `CREATE INDEX` may need to be handled carefully if they are executed more than once.

---

## Project Progress

This folder will continue to evolve as I learn more SQL concepts and apply them to the project.

The goal is to gradually transform the project from a learning exercise into a more realistic **SQL-based Student Performance Management System** with practical reporting and data-analysis queries.

More advanced SQL concepts and project improvements will be added as my SQL learning progresses.