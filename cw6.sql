-- Inserting the value to 1st table
INSERT INTO bookstore(id,title,author,genre,price,copies_sold)
VALUES(1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);


-- Inserting the value to 2nd table

INSERT INTO bestseller 
VALUES(4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500), 
(5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);

-- list of all books from both tables, displaying only the title and author.

SELECT title,author FROM bookstore 
UNION 
SELECT title,author FROM bestseller;



-- Display all books from the books table where the price is greater than 400.
SELECT title FROM bookstore 
WHERE price>400;

-- Show the average price of books in the books table.

SELECT AVG(price) 
FROM bookstore;

-- Display the number of books in the books table using a count.

SELECT COUNT(id) 
FROM bookstore;

-- Show the title and author from books table with aliases Book Title and Written By.

SELECT title AS 'Book Title', author AS 'Written By' 
FROM bookstore;


