USE topper_sql;

-- STUDENTS
CREATE TABLE students(
student_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
age INT CHECK (age>=18) NOT NULL,
gender ENUM('Male', 'Female', 'Other'),
course VARCHAR(100) NOT NULL
);

-- COURSES
CREATE TABLE courses(
course_id INT AUTO_INCREMENT PRIMARY KEY,
course_name VARCHAR(100) NOT NULL,
course_duration INT NOT NULL
);

-- TEACHERS
CREATE TABLE teachers(
teacher_id INT AUTO_INCREMENT PRIMARY KEY,
teacher_name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
subject VARCHAR(100) NOT NULL
);

-- ENROLLMENTS
CREATE TABLE enrollments(
enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
student_id INT NOT NULL,
course_id INT NOT NULL,
CONSTRAINT fk_enrollments_student 
FOREIGN KEY (student_id) REFERENCES students(student_id) 
ON DELETE CASCADE,
CONSTRAINT fk_enrollments_course 
FOREIGN KEY (course_id) REFERENCES courses(course_id) 
ON DELETE CASCADE
);


-- MARKS
CREATE TABLE marks(
marks_id INT AUTO_INCREMENT PRIMARY KEY,
student_id INT NOT NULL,
course_id INT NOT NULL,
marks DECIMAL(5,2) NOT NULL,
CONSTRAINT fk_marks_student 
FOREIGN KEY (student_id) REFERENCES students(student_id) 
ON DELETE CASCADE,
CONSTRAINT fk_marks_course 
FOREIGN KEY (course_id) REFERENCES courses(course_id) 
ON DELETE CASCADE
);


-- COURSE_TEACHERS
CREATE TABLE course_teachers(
course_teacher_id INT AUTO_INCREMENT PRIMARY KEY,
teacher_id INT NOT NULL,
course_id INT NOT NULL,
CONSTRAINT fk_course_teachers_teacher 
FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id) 
ON DELETE CASCADE,
CONSTRAINT fk_course_teachers_course 
FOREIGN KEY (course_id) REFERENCES courses(course_id) 
ON DELETE CASCADE
);