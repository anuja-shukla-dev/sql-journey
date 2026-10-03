# SQL Freelance Practice

A collection of SQL queries written by solving practical, client-style requirements.

This project focuses on developing the ability to understand a client requirement, convert it into SQL logic, and produce a useful result using MySQL.

## Purpose

The goal of this project is to practice SQL from a freelancing perspective rather than only solving theoretical questions.

Each query is based on a client-style requirement and focuses on applying SQL concepts to practical reporting and data problems.

## Folder Structure

sql-freelance-practice/
└── queries/
    ├── 01-course-performance-report.sql
    ├── 02-students-above-average.sql
    ├── 03-teacher-course-report.sql
    ├── 04-course-highest-marks.sql
    └── 05-student-course-performance.sql

## Client Requirements Completed

### 01 — Course Performance Report

Generate a report showing every course along with:

- Number of students
- Average marks obtained by students

Concepts: JOIN, COUNT, AVG, GROUP BY

### 02 — Students Above Average

Find students who scored higher than the overall average marks.

The report includes:

- Student name
- Marks
- Results sorted from highest to lowest

Concepts: JOIN, subquery, AVG, ORDER BY

### 03 — Teacher-Course Report

Generate a report showing:

- Teacher name
- Course name

Teachers who are not currently assigned to a course should also appear.

Concepts: LEFT JOIN, multiple JOINs

### 04 — Course Highest Marks

Generate a report showing each course and the highest marks obtained in that course.

Concepts: JOIN, MAX, GROUP BY

### 05 — Student Course Performance

Generate a report showing:

- Student name
- Number of courses enrolled in
- Average marks

Students with no course enrollment should also appear.

Concepts: LEFT JOIN, COUNT, DISTINCT, correlated subquery, GROUP BY

## SQL Concepts Practiced

- SELECT
- WHERE
- ORDER BY
- INNER JOIN
- LEFT JOIN
- COUNT()
- AVG()
- MAX()
- GROUP BY
- DISTINCT
- Subqueries
- Correlated subqueries

## Learning Objective

This project is helping me improve my ability to:

1. Understand client requirements
2. Identify the required tables and relationships
3. Translate requirements into SQL logic
4. Choose appropriate SQL operations
5. Handle practical reporting requirements
6. Write clean and readable MySQL queries

## Progress

| # | Client Requirement | Status |
|---|---|---|
| 01 | Course Performance Report | ✅ Completed |
| 02 | Students Above Average | ✅ Completed |
| 03 | Teacher-Course Report | ✅ Completed |
| 04 | Course Highest Marks | ✅ Completed |
| 05 | Student Course Performance | ✅ Completed |

More client-style SQL requirements will be added as I continue practicing.

## Database

These queries are currently practiced using the `topper_sql` database from my Student Performance Management System project.

The freelance practice queries are kept separately so the original project can remain focused on database design and SQL learning progression.