# SQL Day 6 — SQL Functions & GROUP BY

## 📌 Overview

Today I learned and practiced **SQL Functions**, including string, numeric, date/time, and aggregate functions.

I also learned how to use **DISTINCT** and **GROUP BY** with aggregate functions to analyze data.

---

## 🧠 Topics Covered

### 1. String Functions

String functions are used to manipulate or retrieve information from text values.

- `UPPER()` — Converts text to uppercase.
- `LOWER()` — Converts text to lowercase.
- `LENGTH()` — Returns the number of characters in a string.

Example:

    SELECT UPPER(name) AS upper_name
    FROM students;

    SELECT LOWER(name) AS lower_name
    FROM students;

    SELECT name, LENGTH(name) AS len_name
    FROM students;

---

### 2. Numeric Functions

Numeric functions are used to perform operations on numerical values.

- `ROUND()` — Rounds a number.
- `CEIL()` — Rounds a number upward.
- `FLOOR()` — Rounds a number downward.
- `ABS()` — Returns the absolute value of a number.

Examples:

    SELECT ROUND(marks) AS rounded_marks
    FROM marks;

    SELECT marks, ROUND(marks, 1) AS round_marks
    FROM marks;

    SELECT marks, CEIL(marks) AS ceil_marks
    FROM marks;

    SELECT marks, FLOOR(marks) AS floor_marks
    FROM marks;

    SELECT ABS(-25);

---

### 3. Date & Time Functions

Date and time functions are used to retrieve and extract information related to dates and time.

- `NOW()` — Returns the current date and time.
- `CURDATE()` — Returns the current date.
- `YEAR()` — Extracts the year from a date.
- `MONTH()` — Extracts the month from a date.
- `DAY()` — Extracts the day from a date.

Examples:

    SELECT NOW();

    SELECT CURDATE();

    SELECT YEAR(NOW()) AS year;

    SELECT MONTH(NOW()) AS month;

    SELECT DAY(NOW()) AS day;

---

### 4. Aggregate Functions

Aggregate functions perform calculations on multiple rows and return a single result.

| Function | Purpose |
|---|---|
| `COUNT()` | Counts rows/values |
| `SUM()` | Calculates the total |
| `AVG()` | Calculates the average |
| `MAX()` | Finds the maximum value |
| `MIN()` | Finds the minimum value |

Examples:

    SELECT COUNT(marks)
    FROM marks;

    SELECT SUM(marks) AS total_marks
    FROM marks;

    SELECT AVG(marks) AS avg_marks
    FROM marks;

    SELECT MAX(marks) AS max_marks
    FROM marks;

    SELECT MIN(marks) AS min_marks
    FROM marks;

---

### 5. DISTINCT

`DISTINCT` is used to return only unique values and remove duplicates from the result.

Example:

    SELECT DISTINCT student_id
    FROM marks;

It can also be combined with aggregate functions.

Example:

    SELECT COUNT(DISTINCT student_id)
    FROM marks;

    SELECT COUNT(DISTINCT course_id)
    FROM marks;

---

### 6. Combining Functions with Arithmetic

Functions can also be combined with arithmetic operations.

Example:

    SELECT MAX(marks) - MIN(marks) AS marks_diff
    FROM marks;

This calculates the difference between the highest and lowest marks.

---

## 📊 GROUP BY

`GROUP BY` is used to group rows that have the same value in a specified column.

It is commonly used with aggregate functions such as:

- `SUM()`
- `AVG()`
- `MAX()`
- `MIN()`
- `COUNT()`

### Basic Syntax

    SELECT column_name, aggregate_function(column_name)
    FROM table_name
    GROUP BY column_name;

---

### GROUP BY with SUM()

Find the total marks for each course:

    SELECT course_id, SUM(marks)
    FROM marks
    GROUP BY course_id;

---

### GROUP BY with AVG()

Find the average marks for each course:

    SELECT course_id, AVG(marks)
    FROM marks
    GROUP BY course_id;

---

### GROUP BY with MAX()

Find the highest marks for each course:

    SELECT course_id, MAX(marks)
    FROM marks
    GROUP BY course_id;

---

### GROUP BY with MIN()

Find the lowest marks for each course:

    SELECT course_id, MIN(marks)
    FROM marks
    GROUP BY course_id;

---

### GROUP BY with COUNT()

Count the number of marks records for each course:

    SELECT course_id, COUNT(marks)
    FROM marks
    GROUP BY course_id;

---

## 🔗 SQL Concepts Practiced

Today's practice helped me understand how different SQL features can work together:

    Aggregate Function
          ↓
    COUNT / SUM / AVG / MAX / MIN
          ↓
       GROUP BY
          ↓
    Results for each group

I also practiced combining:

    COUNT() + DISTINCT

and:

    MAX() - MIN()

---

## 💻 Database Used

Database:

    topper_sql

Tables used for today's practice:

- `students`
- `marks`
- `courses`

---

## 📝 Key Takeaways

- String functions work with text data.
- Numeric functions perform operations on numerical values.
- Date/time functions work with dates and timestamps.
- Aggregate functions perform calculations across multiple rows.
- `DISTINCT` returns unique values.
- `GROUP BY` divides rows into groups so aggregate calculations can be performed for each group.
- Aggregate functions become especially useful when combined with `GROUP BY`.

---

## 🎯 Day 6 Status

**Completed ✅**

Today I learned and practiced SQL Functions, `DISTINCT`, Aggregate Functions, and `GROUP BY`.