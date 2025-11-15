-- Creating table
CREATE TABLE `school`.`bookstable` (`id` INT NOT NULL AUTO_INCREMENT , `title` VARCHAR(20) NOT NULL , `author` VARCHAR(20) NOT NULL , `price` INT NOT NULL , `stockstatus` VARCHAR(20) NOT NULL , `genre` VARCHAR(20) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

-- Inserting into
INSERT INTO bookstable (id, title, author, price, stockstatus, genre) 
VALUES (1, 'The Silent Patient', 'Alex Michaelides', 350, 'In Stock', 'Thriller'),
(2, 'Atomic Habits', 'James Clear', 750, 'In Stock', 'Self-help'), 
(3, 'Harry Potter', 'J.K. Rowling', 299, 'Out of Stock', 'Fantasy'), 
(4, 'The Alchemist', 'Paulo Coelho', 799, 'In Stock', 'Fiction'), 
(5, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 450, 'Out of Stock', 'Finance');


-- To show all the different genres available in the store (no duplicates).
SELECT DISTINCT genre FROM bookstable;

-- To list all books that are in stock and priced below 400.
SELECT title FROM bookstable
WHERE stockstatus="In Stock" AND price<400;

-- To list all books that are either out of stock or have a price above 700.
SELECT title FROM bookstable
WHERE stockstatus="Out of Stock" OR price>700;

-- To show the title and price of every book along with a new column that adds 10% GST to the price.
SELECT title,price, price+(price*0.1) AS price_with_gst FROM bookstable;

-- To display the title, price, and stock_status of all books, sorted by price from highest to lowest.
SELECT title,price,stockstatus FROM bookstable
ORDER BY price DESC;