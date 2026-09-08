# SQL Journey — Day 04

## 📌 Topic: Updating and Deleting Data

Today I learned how to modify and remove existing records from a MySQL table.

---

## 🧠 Concepts Learned

### 1. UPDATE

The `UPDATE` statement is used to modify existing data in a table.

Basic syntax:

    UPDATE table_name
    SET column_name = value
    WHERE condition;

Example:

    UPDATE users
    SET city = 'Lucknow'
    WHERE name = 'Harry';

### 2. Updating Multiple Rows

An `UPDATE` statement can modify multiple records when the condition matches multiple rows.

Example:

    UPDATE users
    SET city = 'Noida'
    WHERE city = 'Delhi';

### 3. Updating a Column Using Its Existing Value

A column can be updated based on its current value.

Example:

    UPDATE users
    SET age = age + 1;

This increases the age of every user by 1.

### 4. DELETE

The `DELETE` statement is used to remove records from a table.

Basic syntax:

    DELETE FROM table_name
    WHERE condition;

Example:

    DELETE FROM users
    WHERE name = 'Rahul';

### 5. Deleting Multiple Rows

A condition can match multiple records.

Example:

    DELETE FROM users
    WHERE city = 'Noida';

---

## ⚠️ Important Safety Concepts

### WHERE Clause

The `WHERE` clause determines which rows are affected.

Without `WHERE`:

    UPDATE users
    SET age = age + 1;

Every row is updated.

Similarly:

    DELETE FROM users;

Every record in the table is deleted.

Therefore, always check which rows will be affected before running an important `UPDATE` or `DELETE`.

A useful habit is:

    SELECT * FROM users
    WHERE condition;

Then perform the `UPDATE` or `DELETE`.

---

## 🔑 Primary Key and Safe Updates

The `users` table contains:

    id INT AUTO_INCREMENT PRIMARY KEY

The primary key uniquely identifies each row.

For example:

    UPDATE users
    SET city = 'Lucknow'
    WHERE id = 100;

Using the primary key is useful when modifying one specific record.

However, SQL does not require a primary key for `UPDATE` or `DELETE`. Any valid condition can be used.

---

## 🛠️ Practice Performed

Practiced:

- Updating a user's city
- Updating a user's age
- Updating a user's course
- Updating multiple records
- Incrementing values
- Deleting a record using its ID
- Deleting a record using another condition
- Deleting multiple records
- Understanding the effect of missing `WHERE`
- Understanding MySQL Workbench Safe Update Mode

---

## 🗂️ Database Used

Database:

    topper_sql

Table:

    users

Columns:

    id
    name
    age
    city
    course

---

## 💡 Key Takeaways

- `UPDATE` modifies existing records.
- `DELETE` removes records.
- `WHERE` controls which rows are affected.
- Without `WHERE`, an `UPDATE` can modify every row.
- Without `WHERE`, a `DELETE` can remove every record.
- A primary key provides a unique way to identify a row.
- Safe Update Mode is a MySQL Workbench safety feature, not an SQL requirement.
- Always understand which rows your query will affect before executing it.

---

## 🚀 Day 04 Status

✅ UPDATE learned  
✅ DELETE learned  
✅ Conditional UPDATE practiced  
✅ Conditional DELETE practiced  
✅ Multiple-row operations practiced  
✅ Safe Update Mode understood  

**Day 04 — Completed 🎯**