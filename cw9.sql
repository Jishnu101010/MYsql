-- create database
CREATE DATABASE library;

-- use database
USE library;

-- create table1

CREATE TABLE books(books_id INT AUTO_INCREMENT PRIMARY KEY, title VARCHAR(25));
--  insetinto
INSERT INTO books VALUES(1," The Alchemist"),(2, 'The Power of Now'),(3,'Think and Grow Rich'), (4 ,'Clean Code');

-- - create table2
CREATE TABLE borrowers(borrower_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(25), book_id INT );
--  insetinto
INSERT INTO borrowers VALUES(101,'Alice',1),(102,'Bob',2),(103,'Charlie',NULL);

-- Show the list of all books along with the name of the person who borrowed them 
SELECT books.title, borrowers.name 
FROM books 
LEFT JOIN borrowers 
ON books.books_id= borrowers.book_id;

-- Show the list of all borrowers along with the book details they borrowed (if any).
SELECT books.title, borrowers.name 
FROM books 
INNER JOIN borrowers 
ON books.books_id= borrowers.book_id;


-- Show the list of all books that have not been borrowed by anyone.
SELECT books.title
FROM books
LEFT JOIN borrowers
ON books.books_id=borrowers.book_id
WHERE borrowers.name IS NULL;

-- Show the list of all borrowers even if they haven't borrowed any book.-- books table
SELECT borrowers.name,books.title
FROM borrowers
LEFT JOIN books
ON books.books_id=borrowers.book_id;