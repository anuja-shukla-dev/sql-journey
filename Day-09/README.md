# SQL Day 9 — JOINs

## Topics Covered

Today I learned about **SQL JOINs** and how they are used to combine related data from multiple tables.

### 1. INNER JOIN

`INNER JOIN` returns only the rows where a matching value exists in both tables.

```sql
SELECT join_employees.name, join_departments.dept_name
FROM join_employees
INNER JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id;
```

**Key idea:**

> Only matching rows are returned.

---

### 2. LEFT JOIN

`LEFT JOIN` returns **all rows from the left table** and the matching rows from the right table.

If no match exists, the columns from the right table contain `NULL`.

```sql
SELECT join_employees.name, join_departments.dept_name
FROM join_employees
LEFT JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id;
```

**Key idea:**

> Preserve the entire left table.

---

### 3. RIGHT JOIN

`RIGHT JOIN` returns **all rows from the right table** and the matching rows from the left table.

If no match exists, the columns from the left table contain `NULL`.

```sql
SELECT join_employees.name, join_departments.dept_name
FROM join_employees
RIGHT JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id;
```

**Key idea:**

> Preserve the entire right table.

---

## Important JOIN Concept

A JOIN does not require the related columns to have the same name.

What matters is that the columns contain related values.

For example:

```sql
ON join_employees.dept_id = join_departments.dept_id
```

Here, `dept_id` connects the two tables.

### How to choose a JOIN

Instead of memorizing JOINs individually, ask:

> **Which table's rows do I need to preserve?**

| Requirement                           | JOIN         |
| ------------------------------------- | ------------ |
| Only matching records                 | `INNER JOIN` |
| Preserve all records from left table  | `LEFT JOIN`  |
| Preserve all records from right table | `RIGHT JOIN` |

---

### Practice tables

* `join_employees`
* `join_departments`

The practice included:

* Writing `INNER JOIN` queries
* Writing `LEFT JOIN` queries
* Writing `RIGHT JOIN` queries
* Selecting columns from multiple tables
* Understanding `NULL` for unmatched records
* Choosing the appropriate JOIN based on a requirement

---

## Key Takeaway

```text
INNER JOIN → Only matches

LEFT JOIN  → All left + matching right

RIGHT JOIN → All right + matching left
```

The main goal of Day 9 was to understand **when and why each JOIN is used**, rather than simply memorizing syntax.
