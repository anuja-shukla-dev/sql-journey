# SQL Journey — Day 02

## 📚 Topics Covered

- Data Types
- Constraints
- Selecting data from a table
- Renaming a table
- Altering a table
- Adding a new column
- Moving a column
- Renaming a column
- Inserting data into tables
- Updating existing records
- Understanding `DECIMAL(5,2)`

## 🛠️ Practical Project

Created a **Student Database** using MySQL.

The practice included:

- Creating a `students` table
- Applying appropriate data types
- Using constraints such as:
  - `PRIMARY KEY`
  - `AUTO_INCREMENT`
  - `NOT NULL`
  - `UNIQUE`
  - `CHECK`
  - `DEFAULT`
- Inserting multiple student records
- Selecting complete and specific records
- Adding a `city` column
- Updating existing student records
- Renaming the `phone` column to `mobile_number`
- Renaming the table from `students` to `student_records`
- Moving `mobile_number` after the `name` column
- Inserting another student after modifying the table
- Displaying the final table

## 💡 Key Learnings

### DECIMAL(5,2)

`DECIMAL(5,2)` means:

- `5` = total number of digits
- `2` = number of digits after the decimal point

Example:

`123.45`

has 5 total digits and 2 digits after the decimal.

### INSERT vs UPDATE

- `INSERT` is used to add new rows.
- `UPDATE` is used to modify existing rows.

### Phone Numbers

Phone numbers are better stored using `VARCHAR` rather than `INT` because they are identifiers, not values used for mathematical calculations.

## 🎯 Day 02 Status

✅ Completed

## 🚀 Progress

SQL Journey:

- Day 01 — Completed ✅
- Day 02 — Completed ✅