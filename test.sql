-- create database
CREATE DATABASE machinetest;

-- use database
USE machinetest;
--  create table named Employee

CREATE TABLE Employee(id INT AUTO_INCREMENT PRIMARY KEY, 
Name VARCHAR(25),Department VARCHAR(30),Leaves INT);

-- insert into table Employee

INSERT INTO Employee(Name,Department,Leaves)
VALUES('Raju','Sales',1),('Sangeetha','Sales',3),('Vinay','Operations',8),
('Abey','Packing',2),('Thomas','Packing',2),('Muneer','Operations',7),
('Aparna','Sales',3),('Abid','Operations',9),('Fathima','Sales',11),
('Varghese','Operations',14);

--  create table named Exam
CREATE TABLE Exam( id INT AUTO_INCREMENT PRIMARY KEY, Employee_id INT,
FOREIGN KEY(Employee_id) REFERENCES Employee(id),exam_status VARCHAR(10));

-- insert into table Exam
INSERT INTO Exam(Employee_id,exam_status) 
VALUES(2,'Pass'),(5,'Fail'),(1,'Fail'),
(8,'Pass'),(3,'Pass'),(1,'Pass'),(6,'Fail'),(9,'Pass'),(10,'Pass');

-- query to get the list of employees who took more than 5 leaves and are in sales department

SELECT *FROM Employee 
WHERE leaves>5 AND Department='Sales';

-- query to get the number of employees working in operation department

SELECT COUNT(Department)
FROM employee
WHERE Department='Operations';

-- query to get count of emlpoyees working each deparment

SELECT Department,COUNT(Department) AS 'employee count' 
FROM Employee GROUP BY Department;

-- query to list the departments where all its employees altogether took more than 10 leaves
SELECT Department 
FROM employee
GROUP BY Department
HAVING sum(Leaves)>10;
-- query to list all the employee name who have passed the exam
SELECT Employee.id, Employee.Name 
FROM Employee 
LEFT JOIN exam ON Employee.id=Exam.Employee_id 
WHERE exam_status='pass';


-- list all the exmployee names who have not attended the exam 
SELECT Employee.id,Employee.Name 
FROM employee 
LEFT JOIN exam ON Employee.id=Exam.Employee_id 
WHERE exam.exam_status IS NULL;