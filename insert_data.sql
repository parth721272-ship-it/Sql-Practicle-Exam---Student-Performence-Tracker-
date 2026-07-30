-- ==========================================
-- Student Performance & Attendance Tracker
-- Part 2: Sample Data
-- ==========================================

USE StudentTrackerDB;

-- Departments
INSERT INTO Departments (department_name) VALUES
('Computer Science'),
('Information Technology'),
('Electronics'),
('Mechanical'),
('Civil');

-- Faculty
INSERT INTO Faculty (name,email,phone_number,department_id) VALUES
('Dr. Amit Shah','amit.shah@college.edu','9876500001',1),
('Prof. Neha Patel','neha.patel@college.edu','9876500002',2),
('Dr. Raj Mehta','raj.mehta@college.edu','9876500003',3),
('Prof. Priya Desai','priya.desai@college.edu','9876500004',4),
('Dr. Karan Joshi','karan.joshi@college.edu','9876500005',5);

-- Courses
INSERT INTO Courses (course_name,faculty_id) VALUES
('Database Management',1),
('Python Programming',1),
('Web Development',2),
('Digital Electronics',3),
('Thermodynamics',4),
('Structural Engineering',5);

-- Students
INSERT INTO Students
(name,dob,gender,email,phone_number,address,admission_date,department_id)
VALUES
('Aarav Patel','2004-01-15','Male','aarav@gmail.com','9000000001','Ahmedabad','2023-06-15',1),
('Diya Shah','2004-03-12','Female','diya@gmail.com','9000000002','Surat','2023-06-15',1),
('Vivaan Mehta','2003-11-20','Male','vivaan@gmail.com','9000000003','Vadodara','2022-06-15',2),
('Anaya Desai','2004-07-18','Female','anaya@gmail.com','9000000004','Rajkot','2023-06-15',2),
('Krish Patel','2003-09-25','Male','krish@gmail.com','9000000005','Ahmedabad','2022-06-15',3),
('Riya Joshi','2004-02-28','Female','riya@gmail.com','9000000006','Bhavnagar','2023-06-15',3),
('Arjun Kumar','2003-12-10','Male','arjun@gmail.com','9000000007','Delhi','2022-06-15',4),
('Sneha Verma','2004-04-16','Female','sneha@gmail.com','9000000008','Jaipur','2023-06-15',4),
('Rahul Singh','2003-06-30','Male','rahul@gmail.com','9000000009','Mumbai','2022-06-15',5),
('Pooja Sharma','2004-08-22','Female','pooja@gmail.com','9000000010','Pune','2023-06-15',5);

-- Enrollments
INSERT INTO Enrollments(student_id,course_id,enrollment_date) VALUES
(1,1,'2023-07-01'),
(2,2,'2023-07-01'),
(3,3,'2022-07-01'),
(4,3,'2023-07-01'),
(5,4,'2022-07-01'),
(6,4,'2023-07-01'),
(7,5,'2022-07-01'),
(8,5,'2023-07-01'),
(9,6,'2022-07-01'),
(10,6,'2023-07-01');

-- Attendance
INSERT INTO Attendance(student_id,course_id,attendance_date,status) VALUES
(1,1,'2024-01-10','Present'),
(2,2,'2024-01-10','Late'),
(3,3,'2024-01-10','Absent'),
(4,3,'2024-01-10','Present'),
(5,4,'2024-01-10','Present'),
(6,4,'2024-01-10','Absent'),
(7,5,'2024-01-10','Present'),
(8,5,'2024-01-10','Late'),
(9,6,'2024-01-10','Present'),
(10,6,'2024-01-10','Present');

-- Grades
INSERT INTO Grades(student_id,course_id,marks_obtained,grade) VALUES
(1,1,95,'A+'),
(2,2,88,'A'),
(3,3,76,'B+'),
(4,3,67,'B'),
(5,4,91,'A+'),
(6,4,58,'C'),
(7,5,82,'A'),
(8,5,73,'B'),
(9,6,64,'C'),
(10,6,98,'A+');
