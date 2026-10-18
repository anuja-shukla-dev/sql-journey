# Day 18 — SQL Triggers

## Overview
Learned how to create and use SQL triggers in MySQL to automatically execute actions when specific database events occur.

## Topics Covered
- `CREATE TRIGGER` syntax
- `BEFORE` and `AFTER` triggers
- `INSERT`, `UPDATE`, and `DELETE` events
- `FOR EACH ROW`
- Using `OLD` and `NEW` to access row values
- Conditional logic using `IF`
- Audit logging
- Data validation using triggers
- Custom error handling with `SIGNAL SQLSTATE '45000'` and `MESSAGE_TEXT`

## Practice Questions

1. **Basic UPDATE Trigger:** Logged student marks changes in the audit table.
2. **Conditional UPDATE Trigger:** Logged changes only when the marks actually changed.
3. **INSERT Trigger:** Recorded newly inserted students and their marks.
4. **DELETE Trigger:** Recorded deleted students and their previous marks.
5. **Validation Trigger:** Prevented inserting student marks below 0 or above 100 using a custom error message.

## Tables Used
- `Students_Trigger` — Stores student details and marks.
- `Student_Audit` — Stores audit records for relevant student operations.

## Key Learnings
- Triggers execute automatically when their specified database events occur.
- `OLD` accesses previous row values, while `NEW` accesses new row values when available.
- `AFTER` triggers can log database changes.
- `BEFORE INSERT` triggers can validate data before insertion.
- `SIGNAL SQLSTATE '45000'` can raise a custom error and reject an invalid operation.
- A trigger runs once for each affected row when defined with `FOR EACH ROW`.

## Status
**Completed** — Practiced UPDATE, INSERT, DELETE, audit logging, and validation triggers in MySQL.

## Next Steps
Continue practicing trigger debugging, edge cases, and practical database scenarios.
