
-- Insert 4 student records into the students table using realistic data.
INSERT INTO students(ID,Name,Age,Department,Grade) VALUES(1,"Appu",22,"ECE",90),(2,"Ameer",22,"Computer Science",95),(3,"jishnu",22,"Physics",75),(4,"Adithayn",23,"MECH",80);

-- <--- query to display all students whose age is greater than 20.>

SELECT Name FROM students WHERE Age>20;

 -- Query to display all students in the 'Computer Science' or 'Physics' departments

SELECT name FROM students 
WHERE department IN ("Computer Science","Physics");

-- Query to show the student who has the grade exactly equal to 90.

SELECT name FROM students 
WHERE grade=90;

-- Query to find students whose grades are between 70 and 90.

SELECT name FROM students 
WHERE grade BETWEEN 70 AND 90;
