# Day 17 – Stored Procedures

## Topics Covered

- Creating Stored Procedures
- Calling Stored Procedures
- IN Parameters
- OUT Parameters
- DELIMITER
- SELECT ... INTO
- IF-ELSE
- IF-ELSEIF-ELSE
- Stored Procedures with JOIN
- Stored Procedures with Subqueries
- Stored Procedures with Aggregate Functions
- AVG() and COUNT()
- UPDATE inside Stored Procedures
- DELETE inside Stored Procedures

## What I Learned

Stored Procedures are pre-defined SQL programs stored inside the database that can be executed whenever required.

### Basic Syntax

    DELIMITER //

    CREATE PROCEDURE procedure_name()
    BEGIN
        -- SQL statements
    END //

    DELIMITER ;

### Calling a Procedure

    CALL procedure_name();

### IN Parameter

IN parameters are used to pass values into a stored procedure.

    CREATE PROCEDURE get_student_by_id(IN p_student_id INT)
    BEGIN
        SELECT *
        FROM students
        WHERE student_id = p_student_id;
    END;

### OUT Parameter

OUT parameters are used to return values from a stored procedure.

    CREATE PROCEDURE count_students(OUT total INT)
    BEGIN
        SELECT COUNT(*)
        INTO total
        FROM students;
    END;

Calling the procedure:

    CALL count_students(@total);
    SELECT @total AS total_students;

## Practice Questions

1. Create a procedure to display all students.
2. Create a procedure to display all courses.
3. Create a procedure to display all teachers.
4. Retrieve a student by student ID using an IN parameter.
5. Retrieve all marks of a student.
6. Retrieve all students enrolled in a specific course using JOIN.
7. Update a student's email using a procedure.
8. Update a student's name using a procedure.
9. Delete a student using a procedure.
10. Count total students using an OUT parameter.
11. Calculate a student's average marks using IN and OUT parameters.
12. Check whether marks indicate Pass or Fail using IF-ELSE.
13. Calculate a grade using IF-ELSEIF-ELSE.
14. Generate a student performance report using JOIN, subquery, and aggregate function.
15. Calculate average marks and return a performance remark using an OUT parameter and conditional statements.

## Key Takeaways

- IN parameters send values into a procedure.
- OUT parameters return values from a procedure.
- DELIMITER allows multiple SQL statements inside a procedure.
- SELECT ... INTO stores query results in variables.
- Stored Procedures can contain SELECT, INSERT, UPDATE, DELETE, conditions, joins, and subqueries.
- SQL conditional statements use IF, ELSEIF, ELSE, and END IF.
- SQL does not support Python-style chained comparisons such as 100 < marks >= 90.
- Stored Procedures help reduce repeated SQL code and make database operations reusable.
- Stored Procedures are useful for organizing frequently used database operations.
- Procedures can combine multiple SQL concepts into a single reusable operation.

## Database Used

topper_sql

### Main Tables

- students
- courses
- teachers
- enrollments
- marks

## Day 17 Status

- Stored Procedures completed  
- IN parameters completed  
- OUT parameters completed  
- Conditional logic completed  
- JOINs inside procedures completed  
- Subqueries inside procedures completed  
- Aggregate functions completed  
- Practice questions completed  


