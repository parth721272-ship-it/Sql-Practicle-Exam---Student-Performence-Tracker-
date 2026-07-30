-- ==========================================================
-- Student Performance & Attendance Tracker
-- Part 5 : Views, Stored Procedures & Triggers
-- ==========================================================

USE StudentTrackerDB;

-- ==========================
-- VIEWS
-- ==========================

-- View 1: Student Details with Department
CREATE OR REPLACE VIEW vw_student_department AS
SELECT s.student_id,
       s.name AS student_name,
       d.department_name
FROM Students s
JOIN Departments d
ON s.department_id = d.department_id;

-- View 2: Student Grades
CREATE OR REPLACE VIEW vw_student_grades AS
SELECT s.student_id,
       s.name,
       c.course_name,
       g.marks_obtained,
       g.grade
FROM Students s
JOIN Grades g ON s.student_id = g.student_id
JOIN Courses c ON g.course_id = c.course_id;

-- View 3: Attendance Summary
CREATE OR REPLACE VIEW vw_attendance_summary AS
SELECT s.student_id,
       s.name,
       a.course_id,
       a.attendance_date,
       a.status
FROM Students s
JOIN Attendance a
ON s.student_id = a.student_id;

-- Test Views
SELECT * FROM vw_student_department;
SELECT * FROM vw_student_grades;
SELECT * FROM vw_attendance_summary;

-- ==========================
-- STORED PROCEDURES
-- ==========================

DELIMITER $$

CREATE PROCEDURE GetStudentGrades(IN p_student_id INT)
BEGIN
    SELECT s.student_id,
           s.name,
           c.course_name,
           g.marks_obtained,
           g.grade
    FROM Students s
    JOIN Grades g ON s.student_id=g.student_id
    JOIN Courses c ON g.course_id=c.course_id
    WHERE s.student_id=p_student_id;
END $$

CREATE PROCEDURE GetDepartmentStudents(IN p_department_id INT)
BEGIN
    SELECT *
    FROM Students
    WHERE department_id=p_department_id;
END $$

DELIMITER ;

-- Execute Procedures
CALL GetStudentGrades(1);
CALL GetDepartmentStudents(1);

-- ==========================
-- TRIGGERS
-- ==========================

-- Log table
CREATE TABLE IF NOT EXISTS Student_Log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    action_type VARCHAR(20),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$

CREATE TRIGGER trg_after_student_insert
AFTER INSERT
ON Students
FOR EACH ROW
BEGIN
    INSERT INTO Student_Log(student_id,action_type)
    VALUES(NEW.student_id,'INSERT');
END $$

CREATE TRIGGER trg_after_student_delete
AFTER DELETE
ON Students
FOR EACH ROW
BEGIN
    INSERT INTO Student_Log(student_id,action_type)
    VALUES(OLD.student_id,'DELETE');
END $$

DELIMITER ;

-- Test Trigger
INSERT INTO Students
(name,dob,gender,email,phone_number,address,admission_date,department_id)
VALUES
('Demo Student','2005-01-01','Male','demo@gmail.com',
'9999999990','Ahmedabad','2024-06-15',1);

SELECT * FROM Student_Log;

-- ==========================================================
-- END OF PART 5
-- ==========================================================
