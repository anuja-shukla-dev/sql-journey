# SQL Day 8 — Primary Key & Foreign Key

## 📚 Topics Covered

- Primary Key
- Foreign Key
- Primary Key vs Foreign Key
- `AUTO_INCREMENT`
- `NOT NULL`
- Parent and Child Tables
- Referential Integrity
- Multiple Foreign Keys
- Foreign Key Constraints
- `ON DELETE CASCADE`
- Valid and Invalid Foreign Key Insertions
- Basic Transaction Handling with `COMMIT`

## 🔑 Primary Key

A Primary Key uniquely identifies each row in a table.

Key properties:

- Values must be unique.
- Values cannot be `NULL`.
- A table has one Primary Key constraint.
- `AUTO_INCREMENT` can be used to automatically generate numeric IDs.

Example:

    student_id INT PRIMARY KEY AUTO_INCREMENT

## 🔗 Foreign Key

A Foreign Key creates a relationship between tables by referencing a key in another table.

In the Student Performance Management System:

    students.student_id
            ↑
            │
    enrollments.student_id

    courses.course_id
            ↑
            │
    enrollments.course_id

Therefore:

- `students.student_id` → Primary Key
- `courses.course_id` → Primary Key
- `enrollments.enrollment_id` → Primary Key
- `enrollments.student_id` → Foreign Key
- `enrollments.course_id` → Foreign Key

## 🏗️ Parent and Child Tables

The table containing the referenced key is the **parent table**.

The table containing the Foreign Key is the **child table**.

    students (Parent)
         ↓
    enrollments (Child)

    courses (Parent)
         ↓
    enrollments (Child)

## 🛡️ Referential Integrity

A Foreign Key helps maintain valid relationships between tables.

For example, if `student_id = 999` does not exist in the `students` table, inserting:

    INSERT INTO enrollments (student_id, course_id)
    VALUES (999, 16);

will fail because the Foreign Key constraint is violated.

The same applies to `course_id`.

## 🔄 Foreign Keys Can Contain Duplicate Values

A Foreign Key does not have to be unique.

For example:

    enrollment_id | student_id
    --------------|-----------
    1             | 10
    2             | 10
    3             | 15

Student `10` can have multiple enrollment records.

The Foreign Key establishes the relationship; it does not uniquely identify the child row.

## 🗑️ ON DELETE CASCADE

`ON DELETE CASCADE` automatically deletes related child records when the referenced parent record is deleted.

Example:

    students
       ↓
    enrollments

If a student is deleted, only the enrollment records belonging to that student are automatically deleted.

Similarly, if a course is deleted, only the enrollments associated with that course are deleted.

## 🧪 Practical Testing

Used the existing `topper_sql` database to test:

1. Valid Foreign Key insertion.
2. Invalid `student_id` insertion.
3. Invalid `course_id` insertion.
4. Existing Primary Key and Foreign Key constraints using `SHOW CREATE TABLE`.
5. `ON DELETE CASCADE` behavior through reasoning.
6. Transaction handling using `SET autocommit = 0` and `COMMIT`.

## 🧠 Key Takeaways

- **Primary Key → Identifies a row.**
- **Foreign Key → Connects tables.**
- A Foreign Key can contain duplicate values.
- Foreign Keys help maintain referential integrity.
- `ON DELETE CASCADE` removes related child rows when a parent row is deleted.
- `NOT NULL` and Foreign Key constraints perform different checks.
- A table can contain multiple Foreign Keys.
- A Primary Key identifies a record in its own table, while a Foreign Key refers to a record in another table.

## 📁 File

`primary-key-foreign-key.sql`