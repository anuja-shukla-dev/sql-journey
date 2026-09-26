USE topper_sql;

-- CREATE A INDEX ON 'GENDER'
CREATE INDEX idx_gender 
ON students(gender);

-- CHECK THE INDEXES
SHOW INDEXES FROM students; 

-- CREATE A INDEX ON 'AGE'
CREATE INDEX idx_age
ON students(age); 

-- DROP THE INDEX
DROP INDEX idx_age
ON students;

-- CREATE COMPOSITE INDEXES
CREATE INDEX idx_name_age
ON students(name, age);

-- CHECK INDEXES
SHOW INDEXES FROM students; 