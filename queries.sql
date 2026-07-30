-- ==========================================================
-- Student Performance & Attendance Tracker
-- Part 4 : Advanced SQL Queries
-- ==========================================================

USE StudentTrackerDB;

-- ==========================
-- WHERE Clause
-- ==========================
SELECT * FROM Students WHERE gender='Female';
SELECT * FROM Students WHERE department_id=1;
SELECT * FROM Grades WHERE marks_obtained>80;

-- ==========================
-- AND / OR / NOT
-- ==========================
SELECT * FROM Students
WHERE gender='Male' AND department_id=1;

SELECT * FROM Students
WHERE department_id=1 OR department_id=2;

SELECT * FROM Students
WHERE NOT gender='Female';

-- ==========================
-- ORDER BY
-- ==========================
SELECT * FROM Students ORDER BY name ASC;
SELECT * FROM Grades ORDER BY marks_obtained DESC;

-- ==========================
-- LIMIT
-- ==========================
SELECT * FROM Students LIMIT 5;
SELECT * FROM Grades ORDER BY marks_obtained DESC LIMIT 3;

-- ==========================
-- GROUP BY
-- ==========================
SELECT department_id, COUNT(*) AS TotalStudents
FROM Students
GROUP BY department_id;

SELECT course_id, AVG(marks_obtained) AS AverageMarks
FROM Grades
GROUP BY course_id;

-- ==========================
-- HAVING
-- ==========================
SELECT department_id, COUNT(*) AS TotalStudents
FROM Students
GROUP BY department_id
HAVING COUNT(*)>=2;

-- ==========================
-- Aggregate Functions
-- ==========================
SELECT COUNT(*) AS TotalStudents FROM Students;
SELECT MAX(marks_obtained) AS HighestMarks FROM Grades;
SELECT MIN(marks_obtained) AS LowestMarks FROM Grades;
SELECT AVG(marks_obtained) AS AverageMarks FROM Grades;
SELECT SUM(marks_obtained) AS TotalMarks FROM Grades;

-- ==========================
-- INNER JOIN
-- ==========================
SELECT s.student_id,s.name,c.course_name
FROM Students s
INNER JOIN Enrollments e ON s.student_id=e.student_id
INNER JOIN Courses c ON e.course_id=c.course_id;

-- ==========================
-- LEFT JOIN
-- ==========================
SELECT s.student_id,s.name,c.course_name
FROM Students s
LEFT JOIN Enrollments e ON s.student_id=e.student_id
LEFT JOIN Courses c ON e.course_id=c.course_id;

-- ==========================
-- RIGHT JOIN
-- ==========================
SELECT s.student_id,s.name,c.course_name
FROM Students s
RIGHT JOIN Enrollments e ON s.student_id=e.student_id
RIGHT JOIN Courses c ON e.course_id=c.course_id;

-- ==========================
-- FULL OUTER JOIN (MySQL)
-- ==========================
SELECT s.student_id,s.name,c.course_name
FROM Students s
LEFT JOIN Enrollments e ON s.student_id=e.student_id
LEFT JOIN Courses c ON e.course_id=c.course_id
UNION
SELECT s.student_id,s.name,c.course_name
FROM Students s
RIGHT JOIN Enrollments e ON s.student_id=e.student_id
RIGHT JOIN Courses c ON e.course_id=c.course_id;

-- ==========================
-- Subqueries
-- ==========================
SELECT * FROM Grades
WHERE marks_obtained=(SELECT MAX(marks_obtained) FROM Grades);

SELECT * FROM Students
WHERE student_id IN
(SELECT student_id FROM Grades WHERE marks_obtained>85);

-- ==========================
-- Date Functions
-- ==========================
SELECT CURDATE() AS Today;
SELECT NOW() AS CurrentDateTime;
SELECT name,TIMESTAMPDIFF(YEAR,dob,CURDATE()) AS Age
FROM Students;

-- ==========================
-- String Functions
-- ==========================
SELECT UPPER(name) FROM Students;
SELECT LOWER(name) FROM Students;
SELECT CONCAT(name,' - ',email) AS StudentInfo FROM Students;
SELECT LENGTH(name) FROM Students;

-- ==========================
-- Window Functions
-- ==========================
SELECT student_id,
marks_obtained,
RANK() OVER(ORDER BY marks_obtained DESC) AS StudentRank
FROM Grades;

SELECT student_id,
marks_obtained,
DENSE_RANK() OVER(ORDER BY marks_obtained DESC) AS DenseRank
FROM Grades;

SELECT student_id,
marks_obtained,
ROW_NUMBER() OVER(ORDER BY marks_obtained DESC) AS RowNum
FROM Grades;

-- ==========================
-- CASE Expression
-- ==========================
SELECT student_id,
marks_obtained,
CASE
WHEN marks_obtained>=90 THEN 'Excellent'
WHEN marks_obtained>=75 THEN 'Good'
WHEN marks_obtained>=60 THEN 'Average'
ELSE 'Needs Improvement'
END AS Performance
FROM Grades;

-- ==========================
-- END OF PART 4
-- ==========================
