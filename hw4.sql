-- Insert 3 new students into the table 

INSERT INTO student 
VALUES(1, 'Alice', 'Web Development', 5000, 'Inactive'), 
(2, 'Bob', 'Data Science', 7000, 'Inactive'),
 (3, 'Charlie', 'UI/UX Design', 4000, 'Active');

-- a query to view only those students whose fees_paid is greater than 5000.

SELECT name 
FROM student
WHERE fees_paid>5000;


-- Update the status to 'Active' for students in the 'Web Development' course.

UPDATE student
SET status="Active"
WHERE course="Web Development";



-- Increase the fees_paid by 1000 for students enrolled in 'Data Science'.
UPDATE student_database
SET fees_paid=fees_paid+1000
WHERE course="Data Science";


-- Update both status to 'Inactive' and reduce fees_paid by 500 for the student whose id is 3.
UPDATE student
SET status="Inactive",fees_paid = fees_paid-500
WHERE id=3;

-- Delete the student whose id is 2.
DELETE FROM student
WHERE id=2;

-- Delete all students who are 'Inactive'.

DELETE FROM student
WHERE status="Inactive";
