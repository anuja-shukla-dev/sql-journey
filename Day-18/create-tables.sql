USE topper_db;

CREATE TABLE Students_Trigger(
	student_id INT PRIMARY KEY,
	name VARCHAR(100),
	marks int
);

CREATE TABLE Student_Audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    action_type VARCHAR(20),
    old_marks INT,
    new_marks INT,
    changed_at DATETIME
);

INSERT INTO Students_Trigger
    (student_id, name, marks)
VALUES
    (101, 'Anu', 75),
    (102, 'Ravi', 60),
    (103, 'Neha', 90);
    
SELECT * FROM Students_Trigger;
SELECT * FROM Student_Audit;


