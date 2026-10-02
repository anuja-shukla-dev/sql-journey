USE topper_sql;

-- ============================================
-- JOIN QUERIES
-- ============================================

-- QUESTION 1
-- Display each student's name along with the course they are enrolled in.
SELECT students.name, courses.course_name
FROM students
JOIN enrollments
ON students.student_id = enrollments.student_id
JOIN courses
ON enrollments.course_id = courses.course_id;

-- QUESTION 2
-- Display student name, course name, and marks for every student's course performance.
SELECT students.name, courses.course_name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id;

-- QUESTION 3
-- Display each student's name, email, and the courses they are enrolled in.
SELECT students.name, students.email, courses.course_name
FROM students
JOIN enrollments
ON students.student_id = enrollments.student_id
JOIN courses
ON enrollments.course_id = courses.course_id;

-- QUESTION 4
-- Display each course name along with the names of the students enrolled in that course.
SELECT courses.course_name, students.name
FROM courses
JOIN enrollments
ON courses.course_id = enrollments.course_id
JOIN students
ON enrollments.student_id = students.student_id;

-- QUESTION 5
-- Display student name, course name, and marks only for students who scored more than 90.
SELECT students.name, courses.course_name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id
WHERE marks.marks > 90;

-- QUESTION 6
Display all students and their enrolled courses, including students who are not enrolled in any course.
SELECT students.name, courses.course_name as enrolled_courses
FROM students
LEFT JOIN enrollments
ON students.student_id = enrollments.student_id
LEFT JOIN courses
ON enrollments.course_id = courses.course_id;

-- QUESTION 7
-- Display all courses and the students enrolled in them, including courses with no enrolled students.
SELECT courses.course_name, students.name
FROM courses
LEFT JOIN enrollments
ON courses.course_id = enrollments.course_id
LEFT JOIN students
ON enrollments.student_id = students.student_id;

-- QUESTION 8
-- Display each teacher's name along with the course they teach.
SELECT teachers.teacher_name, courses.course_name
FROM teachers
JOIN course_teachers
ON teachers.teacher_id = course_teachers.teacher_id
JOIN courses
ON course_teachers.course_id = courses.course_id;

-- QUESTION 9
-- Display course name, teacher name, and teacher email for every course-teacher assignment.
SELECT courses.course_name, teachers.teacher_name, teachers.email
FROM courses
JOIN course_teachers
ON courses.course_id = course_teachers.course_id
JOIN teachers
ON course_teachers.teacher_id = teachers.teacher_id;

-- QUESTION 10
-- Display student name, course name, and marks, sorted from highest marks to lowest marks.
SELECT students.name, courses.course_name, marks.marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id
ORDER BY marks.marks DESC;

-- QUESTION 11
-- Display each student's name and the average marks they have obtained across their courses.
SELECT students.name, AVG(marks.marks) AS avg_marks
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id
GROUP BY students.name;

-- QUESTION 12
-- Display each course name and its average marks.
SELECT courses.course_name, AVG(marks.marks) AS avg_marks
FROM courses
JOIN marks
ON courses.course_id = marks.course_id
GROUP BY courses.course_name;

-- QUESTION 13
-- Display each course name and the highest marks obtained in that course.
SELECT courses.course_name, MAX(marks.marks) AS highest_marks
FROM courses
JOIN marks
ON courses.course_id = marks.course_id
GROUP BY courses.course_name;

-- QUESTION 14
-- Display each course name along with the number of students enrolled in it.
SELECT courses.course_name, COUNT(students.student_id) as students_enrolled
FROM courses
JOIN enrollments
ON courses.course_id = enrollments.course_id
JOIN students
ON enrollments.student_id = students.student_id
GROUP BY courses.course_name;

-- QUESTION 15
-- Generate a student performance report containing: student name, course name, marks, and teacher name.
SELECT students.name, courses.course_name, marks.marks, teachers.teacher_name
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id
JOIN course_teachers
ON marks.course_id = course_teachers.course_id
JOIN teachers
ON course_teachers.teacher_id = teachers.teacher_id;

-- QUESTION 16
-- Display students who scored more than 90, along with their course name and teacher name.
SELECT students.name, marks.marks, courses.course_name, teachers.teacher_name
FROM students
JOIN marks
ON students.student_id = marks.student_id
JOIN courses
ON marks.course_id = courses.course_id
JOIN course_teachers
ON marks.course_id = course_teachers.course_id
JOIN teachers
ON course_teachers.teacher_id = teachers.teacher_id
WHERE marks.marks > 90;

-- QUESTION 17
-- Display each teacher and the number of courses assigned to that teacher.
SELECT teachers.teacher_name, COUNT(course_teachers.course_teacher_id) as courses_assigned
FROM teachers
JOIN course_teachers
ON teachers.teacher_id = course_teachers.teacher_id
GROUP BY teachers.teacher_name;

-- QUESTION 18
-- Generate a course-wise performance report containing: course name, number of students, average marks, highest marks, and lowest marks.
SELECT courses.course_name, COUNT(students.student_id) AS students_count, AVG(marks.marks) AS avg_marks,
MAX(marks.marks) AS highest_marks, MIN(marks.marks) AS lowest_marks
FROM courses
JOIN marks
ON courses.course_id = marks.course_id
JOIN students
ON marks.student_id = students.student_id
GROUP BY courses.course_name;