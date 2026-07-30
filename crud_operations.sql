-- Student Performance & Attendance Tracker
-- Part 3 : CRUD Operations

USE StudentTrackerDB;

-- INSERT
INSERT INTO Departments (department_name) VALUES ('Artificial Intelligence');
INSERT INTO Faculty (name,email,phone_number,department_id)
VALUES ('Dr. Rohan Patel','rohan.patel@college.edu','9876500010',6);
INSERT INTO Courses (course_name,faculty_id)
VALUES ('Machine Learning',6);
INSERT INTO Students
(name,dob,gender,email,phone_number,address,admission_date,department_id)
VALUES
('Yash Patel','2005-05-18','Male','yash@gmail.com','9876543210','Ahmedabad','2024-06-15',6);
INSERT INTO Enrollments(student_id,course_id,enrollment_date)
VALUES (11,7,'2024-07-01');
INSERT INTO Attendance(student_id,course_id,attendance_date,status)
VALUES (11,7,'2024-08-01','Present');
INSERT INTO Grades(student_id,course_id,marks_obtained,grade)
VALUES (11,7,92,'A+');

-- READ
SELECT * FROM Departments;
SELECT * FROM Faculty;
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollments;
SELECT * FROM Attendance;
SELECT * FROM Grades;

-- BASIC SELECT
SELECT * FROM Students WHERE department_id=1;
SELECT * FROM Students WHERE gender='Female';
SELECT * FROM Students WHERE admission_date>='2023-01-01';
SELECT * FROM Students WHERE name LIKE 'A%';
SELECT * FROM Students WHERE address='Ahmedabad';
SELECT * FROM Students WHERE email LIKE '%gmail.com';
SELECT * FROM Grades WHERE marks_obtained>80;
SELECT * FROM Attendance WHERE status='Present';

-- UPDATE
UPDATE Students SET phone_number='9999999999' WHERE student_id=1;
UPDATE Students SET address='Gandhinagar' WHERE student_id=2;
UPDATE Faculty SET email='newamit@college.edu' WHERE faculty_id=1;
UPDATE Courses SET course_name='Advanced Database Management' WHERE course_id=1;
UPDATE Attendance SET status='Late' WHERE attendance_id=3;
UPDATE Grades SET marks_obtained=89, grade='A' WHERE grade_id=4;

-- DELETE
DELETE FROM Attendance WHERE attendance_id=11;
DELETE FROM Grades WHERE grade_id=11;
DELETE FROM Enrollments WHERE enrollment_id=11;
DELETE FROM Students WHERE student_id=11;
DELETE FROM Courses WHERE course_id=7;
DELETE FROM Faculty WHERE faculty_id=6;
DELETE FROM Departments WHERE department_id=6;

-- VERIFY
SELECT * FROM Departments;
SELECT * FROM Faculty;
SELECT * FROM Courses;
SELECT * FROM Students;
SELECT * FROM Enrollments;
SELECT * FROM Attendance;
SELECT * FROM Grades;
