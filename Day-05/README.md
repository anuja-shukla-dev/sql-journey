# Day 05 - SQL Constraints

## 📚 Topics Covered

- PRIMARY KEY
- AUTO_INCREMENT
- NOT NULL
- UNIQUE
- DEFAULT
- CHECK
- FOREIGN KEY
- Testing constraints with valid and invalid data

## 🗄️ Database Used

- `topper_sql`

## 🏗️ Tables Created

### 1. course_constraints

Columns:

- `course_id` - INT, PRIMARY KEY, AUTO_INCREMENT
- `course_name` - VARCHAR(100), NOT NULL

### 2. students_constraints

Columns:

- `id` - INT, PRIMARY KEY, AUTO_INCREMENT
- `name` - VARCHAR(100), NOT NULL
- `email` - VARCHAR(100), UNIQUE
- `age` - INT, CHECK (age >= 18)
- `city` - VARCHAR(50), NOT NULL
- `course` - VARCHAR(50), DEFAULT 'BCA'
- `course_id` - INT, NOT NULL, FOREIGN KEY

## 🔗 Foreign Key Relationship

`students_constraints.course_id`

references

`course_constraints.course_id`

This ensures that a student can only be assigned to an existing course.

## 🧪 Constraint Testing

Tested invalid data to understand how constraints work:

- Age below 18 → CHECK constraint violation
- Duplicate email → UNIQUE constraint violation
- NULL city → NOT NULL constraint violation
- Non-existing course ID → FOREIGN KEY constraint violation
- NULL course → DEFAULT does not apply when NULL is explicitly provided

## 💡 Key Learning

SQL constraints are rules applied to table columns to maintain data accuracy, consistency, and integrity.

Today I practiced constraints by not only creating them but also intentionally inserting invalid data to observe the errors.

## 📝 Practice Status

- [x] PRIMARY KEY
- [x] AUTO_INCREMENT
- [x] NOT NULL
- [x] UNIQUE
- [x] DEFAULT
- [x] CHECK
- [x] FOREIGN KEY
- [x] Constraint testing

## 🚀 Next Step

Continue with the next SQL topic and gradually move toward JOINs and advanced querying.