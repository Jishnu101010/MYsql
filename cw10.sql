-- use database

USE school;

--  create table

CREATE TABLE students2
(student_id INT UNIQUE  AUTO_INCREMENT, name VARCHAR(25), email VARCHAR(50) UNIQUE);

-- TO create Table "courses"
CREATE TABLE courses (course_id INT UNIQUE,course_name VARCHAR(25));

-- To create Table "enrollments" linking tables "students" and "courses"
CREATE TABLE enrollments(
    student_id INT, 
    course_id INT,
    FOREIGN KEY(student_id) REFERENCES students2(student_id),
    FOREIGN KEY(course_id) REFERENCES courses(course_id)
    );