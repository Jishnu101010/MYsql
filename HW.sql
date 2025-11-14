-- Insert 5 different books into the books table using the INSERT INTO 

INSERT INTO books (id, title, author, price, genre)
VALUES
(1, 'The Da Vinci Code', 'Dan Brown', 400, 'Thriller'),
(2, 'The Selfish Gene', 'Richard Dawkins', 450, 'Science'),
(3, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 700, 'History'),
(4,'The Great Gatsby', 'F. Scott Fitzgerald', 350, 'Fiction'),
(5, 'The Godfather', 'Mario Puzo', 550, 'Crime');

-- Select all books that have a price greater than 400.

SELECT * FROM books
WHERE price > 400;

-- Select all books where the genre is either 'History', 'Science', or 'Fiction'.

SELECT * FROM books
WHERE genre IN ('History', 'Science', 'Fiction');


-- Select the book where the title is exactly 'The Great Gatsby'.

SELECT * FROM books
WHERE title = 'The Great Gatsby';


-- Select all books that are not written by 'Dan Brown'.

SELECT * FROM books
WHERE author != 'Dan Brown';
