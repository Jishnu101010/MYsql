-- Database Creation
CREATE DATABASE BookStoreDB;

-- Selecting Database
USE BookStoreDB;

-- To create a table named authors with the following columns:
CREATE TABLE authors
(author_id INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(25),
 country VARCHAR(25)
);

-- To create another table named books with the following columns:
CREATE TABLE books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(25),
    price INT,
    author_id INT
);

-- To add a new column called published_year (number) to the books table.
ALTER TABLE books
ADD published_year INT ;

-- To delete all rows from the books table without removing the table itself.
TRUNCATE TABLE books;

-- To remove the BookStoreDB completely from the system.
DROP DATABASE BookStoreDB;