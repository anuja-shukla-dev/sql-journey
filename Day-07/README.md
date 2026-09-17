# SQL Day 7 — Transactions

## 📌 Overview

On Day 7 of my SQL journey, I learned about **Transactions** and **Auto-commit** in MySQL.

The main focus was understanding how multiple SQL operations can be treated as a single unit of work and how changes can either be permanently saved or undone.

---

## 📚 Topics Covered

- Transactions
- `START TRANSACTION`
- `COMMIT`
- `ROLLBACK`
- Auto-commit
- `SET autocommit`
- Checking the auto-commit status
- Multiple operations within a transaction

---

## 🔹 1. Transaction

A **transaction** is a group of one or more SQL operations that are treated as a single unit of work.

For example, a bank transfer may involve:

    Account A → Deduct ₹500
    Account B → Add ₹500

Both operations should be completed together. Transactions help maintain consistency when multiple related operations are performed.

### Basic Transaction Flow

    START TRANSACTION
           ↓
      SQL Operations
           ↓
      ┌────┴────┐
      ↓         ↓
    COMMIT   ROLLBACK
      ↓         ↓
     Save      Undo

---

## 🔹 2. START TRANSACTION

`START TRANSACTION` begins a new transaction.

    START TRANSACTION;

After starting a transaction, SQL operations can be performed and later either committed or rolled back.

---

## 🔹 3. COMMIT

`COMMIT` permanently saves the changes made during the current transaction.

    START TRANSACTION;

    UPDATE students
    SET age = 19
    WHERE student_id = 4;

    COMMIT;

After `COMMIT`, the changes are permanently saved.

### Remember

    COMMIT → Save changes permanently

---

## 🔹 4. ROLLBACK

`ROLLBACK` undoes changes made during the current transaction that have not been committed.

    START TRANSACTION;

    UPDATE students
    SET age = 27
    WHERE student_id = 1;

    ROLLBACK;

The update is undone and the previous value is restored.

### Remember

    ROLLBACK → Undo uncommitted changes

---

## 🔹 5. COMMIT vs ROLLBACK

| Command | Purpose |
|---|---|
| `COMMIT` | Permanently saves transaction changes |
| `ROLLBACK` | Undoes uncommitted transaction changes |

---

## 🔹 6. Multiple Operations in One Transaction

A transaction can contain multiple SQL operations.

Example:

    START TRANSACTION;

    UPDATE students
    SET age = 21
    WHERE student_id = 6;

    UPDATE students
    SET email = 'arjun.mehta11@example.com'
    WHERE student_id = 7;

    DELETE FROM students
    WHERE student_id = 8;

    ROLLBACK;

A single `ROLLBACK` can undo all the above changes because they were part of the same transaction.

Similarly, multiple operations can be permanently saved using one `COMMIT`.

    START TRANSACTION;

    UPDATE students
    SET age = 22
    WHERE student_id = 9;

    UPDATE students
    SET name = 'Rahul Shukla'
    WHERE student_id = 10;

    COMMIT;

---

## 🔹 7. Auto-commit

MySQL normally has **auto-commit enabled**.

When auto-commit is enabled, each successfully executed SQL statement is automatically committed.

Example:

    UPDATE students
    SET age = 25
    WHERE student_id = 1;

With auto-commit enabled, the successful update is automatically committed.

### Checking Auto-commit

    SELECT @@autocommit;

Results:

    1 → Auto-commit ON
    0 → Auto-commit OFF

---

## 🔹 8. Disabling Auto-commit

Auto-commit can be disabled using:

    SET autocommit = 0;

After disabling auto-commit, changes are not automatically committed.

They can be permanently saved using:

    COMMIT;

or undone using:

    ROLLBACK;

### Enabling Auto-commit Again

    SET autocommit = 1;

---

## 🔄 Auto-commit OFF Flow

    SET autocommit = 0
             ↓
          UPDATE
             ↓
       ┌─────┴─────┐
       ↓           ↓
    COMMIT      ROLLBACK
       ↓           ↓
      Save        Undo

---

## 🧠 Key Takeaways

- A transaction groups related SQL operations into a single unit of work.
- `START TRANSACTION` begins a transaction.
- `COMMIT` permanently saves changes.
- `ROLLBACK` undoes uncommitted changes.
- Multiple SQL operations can be controlled by one transaction.
- Auto-commit automatically commits successfully executed statements.
- `@@autocommit` can be used to check the current auto-commit setting.
- `SET autocommit = 0` disables auto-commit.
- `SET autocommit = 1` enables auto-commit.

---

## 🛠️ Practice

The `transactions.sql` file contains practice queries covering:

1. `ROLLBACK` with `UPDATE`
2. `ROLLBACK` with `DELETE`
3. `COMMIT` with `UPDATE`
4. Multiple operations with `ROLLBACK`
5. Multiple operations with `COMMIT`
6. Checking auto-commit
7. Disabling auto-commit
8. `UPDATE` and `ROLLBACK` with auto-commit disabled

---

## 🎯 Day 7 Status

**Completed ✅**

Topics practiced:

**Transactions → COMMIT → ROLLBACK → Multiple Operations → Auto-commit**
```
