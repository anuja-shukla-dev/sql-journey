USE topper_sql;

-- QUESTION 1: Create a procedure to display all students.
DELIMiTER //
CREATE PROCEDURE get_all_students()
BEGIN
	SELECT * FROM students;
END //
DELIMITER ;

CALL get_all_students();

-- QUESTION 2: Create a procedure to display all courses.
DELIMITER //
CREATE PROCEDURE get_all_courses()
BEGIN 
	SELECT * FROM courses;
END //
DELIMITER ;

CALL get_all_courses();

-- QUESTION 3: Create a procedure to display all teachers.
DELIMITER //
CREATE PROCEDURE get_all_teachers()
BEGIN
	SELECT * FROM teachers;
END //
DELIMITER ;

CALL get_all_teachers();

-- QUESTION 4: Create a procedure to retrieve a student by student ID using an IN parameter.
DELIMITER //
CREATE PROCEDURE get_student_by_id(
IN p_student_id INT)
BEGIN 
	SELECT * FROM students
    WHERE student_id = p_student_id;
END //
DELIMITER ;

CALL get_student_by_id(7);

-- QUESTION 5: Create a procedure to retrieve all marks of a student using an IN parameter.
DELIMITER //

CREATE PROCEDURE get_student_marks(
IN p_student_id INT)
BEGIN
	SELECT * FROM marks
    WHERE student_id = p_student_id;
END //
DELIMITER ;

CALL get_student_marks(5);

-- QUESTION 6: Create a procedure to retrieve all students enrolled in a specific course using JOIN.
DELIMITER //
CREATE PROCEDURE get_students_by_course(IN id INT)
BEGIN
	SELECT s.*
    FROM students s
    JOIN enrollments e
    ON s.student_id = e.student_id
    WHERE e.course_id = id;
END //
DELIMITER ;

CALL get_students_by_course(18);

-- QUESTION 7: Create a procedure to update a student's email using an IN parameter.
DELIMITER //
CREATE PROCEDURE update_student_email(
IN id INT,
IN new_email VARCHAR(50)
)
BEGIN 
	UPDATE students
    SET email = new_email
    WHERE student_id = id;
END //
DELIMITER ;

CALL update_student_email(7, 'arjunmehta7@example.com');

-- QUESTION 8: Create a procedure to update a student's name using an IN parameter.
DELIMITER //
CREATE PROCEDURE update_student_name(
IN id INT,
IN new_name VARCHAR(50)
)
BEGIN 
	UPDATE students
    SET name = new_name
    WHERE student_id = id;
END //
DELIMITER ;

CALL update_student_name(2, 'Ananya Sharma');

-- QUESTION 9: Create a procedure to delete a student using an IN parameter.
DELIMITER //
CREATE PROCEDURE delete_student(
IN id INT)
BEGIN
	DELETE FROM students
    WHERE student_id = id;
END //
DELIMITER ;

CALL delete_student(20);

-- QUESTION 10: Create a procedure to count the total number of students using an OUT parameter.
DELIMITER //
CREATE PROCEDURE count_students(OUT total INT)
BEGIN
	SELECT COUNT(*)
    INTO total
    FROM students;
END //
DELIMITER ;

CALL count_students(@total);
SELECT @total AS total_students;

-- QUESTION 11: Create a procedure to calculate a student's average marks using an IN and OUT parameter.
DELIMITER //
CREATE PROCEDURE get_average_marks
(IN s_id INT,
OUT avg_marks DECIMAL(5,2)
)
BEGIN 
	SELECT AVG(marks)
    INTO avg_marks
    FROM marks
    WHERE student_id = s_id;
END //
DELIMITER ;

CALL get_average_marks(2, @avg);
SELECT @avg AS average_marks;

-- QUESTION 12: Create a procedure to check whether the given marks indicate Pass or Fail using IF-ELSE.
DELIMITER //
CREATE PROCEDURE check_marks
(IN marks INT)
BEGIN 
	IF marks >= 40 THEN
		SELECT 'Pass' AS result;
	ELSE 
		SELECT 'Fail' AS result;
	END IF;
END //
DELIMITER ;

CALL check_marks(75);

-- QUESTION 13: Create a procedure to calculate a student's grade based on marks using IF-ELSEIF-ELSE.
DELIMITER //
CREATE PROCEDURE grade_calculator(IN marks INT)
BEGIN 
	IF marks >= 90 THEN
		SELECT 'A' AS grade;
	ELSEIF marks >= 80 THEN
		SELECT 'B' AS grade;
	ELSEIF marks >= 70 THEN
		SELECT 'C' AS grade;
	ELSEIF marks >= 60 THEN
		SELECT 'D' AS grade;
	ELSEIF marks >= 40 THEN
		SELECT 'E' AS grade;
	ELSE 
		SELECT 'F' AS grade;
	END IF;
END //
DELIMITER ;

CALL grade_calculator(79);

-- QUESTION 14: Create a procedure to generate a student's performance report using JOIN, subquery, and aggregate function.
DELIMITER //
CREATE PROCEDURE student_performance_report
(IN p_stu_id INT)
BEGIN
	SELECT s.name, c.course_name, m.marks,
    (
		SELECT AVG(m2.marks)
		FROM marks m2
        WHERE m2.student_id = p_stu_id
	)AS average_marks
        
    FROM students s
    JOIN marks m
		ON s.student_id = m.student_id
    JOIN courses c
		ON m.course_id = c.course_id
    WHERE s.student_id = p_stu_id;
    
END //
DELIMITER ;

CALL student_performance_report(7);

-- QUESTION 15: Create a procedure to calculate a student's average marks and return a performance remark using an OUT parameter and conditional statements.
DELIMITER //
CREATE PROCEDURE marks_report(
IN p_stu_id INT,
OUT avg_marks DECIMAL(5,2)
)
BEGIN 
	SELECT AVG(marks)
    INTO avg_marks
    FROM marks
    WHERE student_id = p_stu_id;
    IF avg_marks >= 75 THEN
		SELECT 'Excellent' AS remark; 
	ELSEIF avg_marks >= 60 THEN 
		SELECT 'Good' AS remark;
	ELSEIF avg_marks >= 40 THEN
		SELECT 'Average' AS remark;
	ELSE
		SELECT 'Needs Improvement' AS remark;
	END IF;
END //
DELIMITER ;

CALL marks_report(5, @avg);
SELECT @avg AS average_marks;