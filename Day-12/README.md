# SQL Day 12 — SELF JOIN

## Overview

Day 12 focused on SELF JOIN in SQL.

A SELF JOIN is used when we need to compare rows within the same table. The same table is referenced twice using different aliases so that SQL can compare one row with another.

## Topics Covered

- What is a SELF JOIN?
- Joining a table with itself
- Using table aliases (s1, s2, e1, e2)
- Comparing rows within the same table
- Finding students with the same age
- Finding students with the same gender
- Finding students with the same age and gender
- Comparing students based on age
- Finding employees from different departments
- Finding students with the same age but different genders
- Finding students with a specific age difference
- Creating unique pairs using <
- Avoiding self-pairs
- Avoiding duplicate/reversed pairs
- Understanding directional vs symmetric comparisons
- Understanding why aliases are necessary

## SELF JOIN Syntax

SELECT ...
FROM table_name AS t1
JOIN table_name AS t2
ON condition;

The same table is used twice, but aliases allow us to treat the two instances separately.

Example:

SELECT
    s1.name AS student1,
    s2.name AS student2
FROM students AS s1
JOIN students AS s2
ON s1.age = s2.age;

Here:
- s1 → first instance of students
- s2 → second instance of students
- s1.age = s2.age → compares the ages of two students

## Unique Pair Filtering

When comparing rows, the same pair can appear twice.

For example:

Student A → Student B
Student B → Student A

To keep only one pair, we can use:

s1.student_id < s2.student_id

This also prevents a student from being paired with themselves:

Student A → Student A

Example:

SELECT
    s1.name AS student1,
    s2.name AS student2
FROM students AS s1
JOIN students AS s2
ON s1.age = s2.age
AND s1.student_id < s2.student_id;


## Practice Completed

1. Employees from the same department
2. Students with the same age
3. Students with the same gender
4. Students with the same age and gender
5. Students where one is older than another
6. Employees from different departments
7. Students with the same age but different genders
8. Students with an age difference of exactly 1
9. Students with the same gender but different ages
10. SELF JOIN concept questions


## Day 12 Status

Completed ✅

Focused on understanding SELF JOIN logic rather than memorizing syntax.




