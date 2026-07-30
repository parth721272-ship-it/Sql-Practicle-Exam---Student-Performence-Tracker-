# Student Performance & Attendance Tracker

## Project Overview

The **Student Performance & Attendance Tracker** is a MySQL database project developed to manage student records, course enrollments, attendance, and academic performance. It demonstrates both basic and advanced SQL concepts through a real-world college management system.

This project is suitable for beginners learning MySQL and fulfils the requirements of a DBMS academic project.

---

## Objectives

- Design a relational database using MySQL.
- Manage student, faculty, department, course, attendance, and grade information.
- Perform CRUD (Create, Read, Update, Delete) operations.
- Practice SQL queries using filtering, sorting, joins, aggregate functions, subqueries, and window functions.
- Understand database design and data management concepts.

---

## Technologies Used

- **Database:** MySQL 8.0+
- **Tool:** MySQL Workbench
- **Language:** SQL

---

## Project Files

- `create_database.sql` – Database and table creation
- `insert_data.sql` – Sample data insertion
- `crud_operations.sql` – CRUD operations
- `queries.sql` – Advanced SQL queries
- `views_procedures_triggers.sql` – Views, Procedures & Triggers
- `README.md`
- `Project_Report.docx`
- `ER_Diagram.png`

---

## Database Tables

The database consists of the following tables:

1. Departments
2. Students
3. Faculty
4. Courses
5. Enrollments
6. Attendance
7. Grades

---

## Database Relationships

- One department has many students.
- One department has many faculty members.
- One faculty member teaches multiple courses.
- One student can enroll in multiple courses.
- Attendance is recorded for each student and course.
- Grades are assigned to students for each course.

---

## Features

- Database creation
- Table creation with constraints
- Primary Keys
- Foreign Keys
- Sample data insertion
- CRUD Operations
- WHERE clause
- AND, OR, NOT operators
- ORDER BY
- GROUP BY
- HAVING clause
- LIMIT
- Aggregate Functions
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN (using UNION)
- Subqueries
- Date Functions
- String Functions
- Window Functions
- CASE Expressions
- Views
- Stored Procedures
- Triggers

---

## SQL Concepts Covered

### Database Design
- CREATE DATABASE
- CREATE TABLE
- Primary Key
- Foreign Key
- Constraints

### Data Manipulation
- INSERT
- UPDATE
- DELETE
- SELECT

### Query Operations
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- LIMIT

### Aggregate Functions
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

### Joins
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN (using UNION)

### Advanced SQL
- Subqueries
- CASE Expressions
- Window Functions
- Date Functions
- String Functions

### Database Objects
- Views
- Stored Procedures
- Triggers

---

## How to Run

Execute the SQL files in the following order:

1. create_database.sql
2. insert_data.sql
3. crud_operations.sql
4. queries.sql
5. views_procedures_triggers.sql

---

## Sample Queries

- Display all students.
- Display students department-wise.
- Find students with marks above 80.
- Count students in each department.
- Calculate average marks.
- Find highest and lowest marks.
- Display attendance records.
- Rank students based on marks.
- Categorize performance using CASE.

---

## Learning Outcomes

After completing this project, you will understand:

- Relational Database Design
- SQL Table Relationships
- CRUD Operations
- SQL Filtering and Sorting
- Aggregate Functions
- SQL Joins
- Subqueries
- Window Functions
- Views
- Stored Procedures
- Triggers

---

## Future Enhancements

- Student Login System
- Faculty Dashboard
- Attendance Percentage Calculator
- GPA Calculation
- Result Generation
- Web Application Integration
- Dashboard and Reports

---

## Author

**Name:** Parth Patel

**Project:** Student Performance & Attendance Tracker

**Technology:** MySQL

---

## Conclusion

The **Student Performance & Attendance Tracker** is a beginner-friendly MySQL project that demonstrates essential database concepts such as relational design, data manipulation, joins, aggregate functions, subqueries, window functions, stored procedures, triggers, and views. It provides hands-on experience in building and managing a real-world database system and serves as an excellent academic project for learning SQL.

---

## License

This project is developed for **educational and academic purposes only**.
