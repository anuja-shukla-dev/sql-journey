# SQL Day 11 – JOIN + UNION

## Topics Covered

- Combining `JOIN` with `UNION`
- Using `INNER JOIN`
- Filtering joined data using `WHERE`
- Using `IN` for multiple values
- Using `UNION` to combine result sets
- Adding fixed values using aliases
- Sorting the final result using `ORDER BY`

## What I Learned

- `JOIN` combines columns from related tables.
- `UNION` combines the results of multiple `SELECT` queries.
- `JOIN` and `UNION` can be used together to create meaningful combined reports.
- `UNION` removes duplicate rows.
- The `SELECT` statements combined using `UNION` must have the same number of columns.

## Practice

Created queries using `join_employees` and `join_departments` to:

- Combine employee and department information.
- Categorize employees based on their department.
- Combine multiple department-based results using `UNION`.
- Sort the final result alphabetically by employee name.

## Key Takeaway

`JOIN` combines data **horizontally**, while `UNION` combines result sets **vertically**.