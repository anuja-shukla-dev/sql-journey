### Day 15 — Subqueries

Learned and practiced **Subqueries** in MySQL.

#### Topics Practiced

* Subqueries with `WHERE`
* Using aggregate functions inside subqueries
* Scalar subqueries
* Comparison operators with subqueries
* Combining `JOIN` with subqueries
* Using `AVG()`, `MAX()`, and `MIN()` inside subqueries

#### Practice Queries

* Find students older than the average age.
* Find students younger than the average age.
* Find students with the maximum age.
* Find students with the minimum age.
* Find students whose age equals the average age.
* Find students whose marks are above the average marks.
* Find students with the highest marks.
* Find students with the lowest marks.

#### Key Learning

A subquery is a query written inside another SQL query. The inner query provides a value or result that is used by the outer query.

Example:

```sql
SELECT *
FROM students
WHERE age > (
    SELECT AVG(age)
    FROM students
);
```

This helped me understand how one query can provide the information required by another query.
