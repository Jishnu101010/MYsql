-- create table
CREATE TABLE authors1(author_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(25));
-- insert into
INSERT INTO authors1 VALUES(1,'Jane Austen') ,(2,'George Orwell');

-- create table
CREATE TABLE book(book_id INT AUTO_INCREMENT PRIMARY KEY, title VARCHAR(25),
authorid INT , FOREIGN KEY (authorid) REFERENCES authors1(author_id) 
INDEX(authorid));
-- insert into
INSERT INTO book 
VALUES(101,'Pride and Prejudice',1), (102,'Emma',1), 
(103,'1984',2), (104,'Animal Farm',2);


