-- Create Database
CREATE DATABASE company;

-- Select Database
USE company;

-- Create table 
CREATE TABLE employees(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(20));

-- Inserting values into
INSERT INTO employees
VALUES
(1,"Anjali"),
(2,"Rohan"),
(3,"Meena");

-- Create table 
CREATE TABLE departments(emp_id INT,department_name VARCHAR(20));

-- Inserting values into 
INSERT INTO departments
VALUES
(1,"HR"),
(2,"IT"),
(4,"Finance");

-- To show list of all employees along with their department name. If an employee doesn’t belong to any department, still show their name with “NULL” for the department.
SELECT employees.name,departments.department_name
FROM employees
LEFT JOIN departments
ON employees.id=departments.emp_id;

-- To show only those employees who have a department assigned.
SELECT employees.name
FROM employees
JOIN departments
ON employees.id=departments.emp_id;

-- To show all department assignments, even if the employee doesn’t exist in the employee table-- employees table
SELECT departments.emp_id, employees.name,departments.department_name
FROM departments
LEFT JOIN employees
ON departments.emp_id=employees.id;