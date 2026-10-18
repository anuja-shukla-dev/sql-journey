USE topper_db;

-- Q1: Creates an AFTER UPDATE trigger to log changes in student marks into the audit table.
DELIMITER //
CREATE TRIGGER log_marks_update
AFTER UPDATE ON Students_Trigger
FOR EACH ROW
BEGIN
	INSERT INTO Student_Audit
		(student_id, action_type, old_marks, new_marks, changed_at)
    VALUES
		(NEW.student_id, 'Update', OLD.marks, NEW.marks, NOW());
END //
DELIMITER ;

UPDATE Students_Trigger
SET marks = 85
WHERE student_id = 101;

SELECT * FROM Student_Audit;

-- Q2: Creates an AFTER UPDATE trigger that logs student marks only when the marks actually change.
DELIMITER //
CREATE TRIGGER log_changed_marks
AFTER UPDATE ON Students_Trigger
FOR EACH ROW
BEGIN 
	IF OLD.marks <> NEW.marks THEN
		INSERT INTO Student_Audit
			(student_id, action_type, old_marks, new_marks, changed_at)
		VALUES
			(NEW.student_id, 'Update', OLD.marks, NEW.marks, NOW());
	END IF;
END //
DELIMITER ;

UPDATE Students_Trigger
SET marks = 85
WHERE student_id = 101;

SELECT * FROM Student_Audit;

-- Q3: Creates an AFTER INSERT trigger to record newly added students and their marks in the audit table.
DELIMITER //
CREATE TRIGGER log_new_student
AFTER INSERT ON Students_Trigger
FOR EACH ROW
BEGIN
	INSERT INTO Student_Audit
		(student_id, action_type, old_marks, new_marks, changed_at)
	VALUES
		(NEW.student_id, 'Insert', NULL, NEW.marks, NOW());
END //
DELIMITER ;

INSERT INTO Students_Trigger
(student_id, marks)
VALUES
(104, 99);

SELECT * FROM Student_Audit;

-- Q4: Creates an AFTER DELETE trigger to record deleted students and their previous marks in the audit table.
DELIMITER //
CREATE TRIGGER log_deleted_student
AFTER DELETE ON Students_Trigger
FOR EACH ROW
BEGIN
	INSERT INTO Student_Audit
		(student_id, action_type, old_marks, new_marks, changed_at)
    VALUES
		(OLD.student_id, 'DELETE', OLD.marks, NULL, NOW());
END //
DELIMITER ;

DELETE FROM Students_Trigger
WHERE student_id = 104;

SELECT * FROM Student_Audit;

Q5: Creates a BEFORE INSERT trigger that validates student marks and rejects values outside the 0–100 range using a custom error message.
DELIMITER //
CREATE TRIGGER validate_student_marks
BEFORE INSERT ON Students_Trigger
FOR EACH ROW
BEGIN
	IF NEW.marks < 0 OR NEW.marks > 100 THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Marks must be between 0 and 100.';
	END IF;
END //
DELIMITER ;

INSERT INTO Students_Trigger
(student_id, marks)
VALUES
(106, 89);


INSERT INTO Students_Trigger
(student_id, marks)
VALUES
(105, 110);

SELECT * FROM Student_Audit;