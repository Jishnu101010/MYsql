-- Datatbase Creation

CREATE DATABASE GroceryShop;

-- Selecting database

USE Groceryshop;

-- Creating Table

CREATE TABLE products
(product_id INT PRIMARY KEY AUTO_INCREMENT,
 product_name VARCHAR(25),
 price INT);

-- To add a new column called category (text) to the same table.

ALTER TABLE products
ADD category VARCHAR(25);

-- To remove all items from the products table without deleting the table itself.

TRUNCATE TABLE products;

-- delete the entire database as it’s no longer needed.

DROP DATABASE Groceryshop;