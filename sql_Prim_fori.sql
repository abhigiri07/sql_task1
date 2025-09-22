CREATE DATABASE SchoolDB;
USE SchoolDB;

-- Table 1: Students
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    -- Foreign Keys
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
    );