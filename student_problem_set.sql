-- SQL Student Problem Set
-- Section A: ALTER TABLE
-- Questions 1 to 6


-- Create database
CREATE DATABASE IF NOT EXISTS student_practice;

USE student_practice;


-- Create students table
CREATE TABLE IF NOT EXISTS students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department VARCHAR(50) DEFAULT 'General',
    marks DECIMAL(5, 2),
    age INT,
    city VARCHAR(50),
    enrollment_date DATE,
    status VARCHAR(20) DEFAULT 'Active'
);


-- Create courses table
CREATE TABLE IF NOT EXISTS courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    fees DECIMAL(8, 2),
    duration_months INT
);


-- Q1: Add phone_number
ALTER TABLE students
ADD phone_number VARCHAR(15);


-- Q2: Change first_name length to 80
ALTER TABLE students
MODIFY first_name VARCHAR(80) NOT NULL;


-- Q3: Remove age column
ALTER TABLE students
DROP COLUMN age;


-- Q4: Rename city to home_town
ALTER TABLE students
RENAME COLUMN city TO home_town;


-- Q5: Add instructor_name
ALTER TABLE courses
ADD instructor_name VARCHAR(60);


-- Q6: Set default value for status
ALTER TABLE students
MODIFY status VARCHAR(20) DEFAULT 'Active';