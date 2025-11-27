
-- Selecting Database
USE library;

-- Table creating
CREATE TABLE categories(
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR (20));

-- Table creating
CREATE TABLE books1(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    book_name VARCHAR(30),
    category_id INT,
    FOREIGN KEY(category_id) REFERENCES categories(category_id),
    INDEX(book_name)
    );

-- To show all indexes in the books table.

SHOW INDEXES FROM books;
