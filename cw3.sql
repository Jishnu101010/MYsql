-- Creating Table
CREATE TABLE `school`.`product` (`ID` INT NOT NULL AUTO_INCREMENT , `Name` VARCHAR(15) NOT NULL , `Category` VARCHAR(15) NOT NULL , `Price` INT NOT NULL , `In_Stock` VARCHAR(15) NOT NULL , PRIMARY KEY (`ID`)) ENGINE = InnoDB;

-- Inserting into Table
INSERT INTO product 
VALUES 
(1, 'Mouse', 'Electronics', 500, 'Yes'),
(2, 'USB Cable', 'Electronics', 250, 'Yes'),
(3, 'Car','Vehicles', 150, 'No'),
(4, 'Notebook', 'Electronics',2000,'Yes')
(5, 'Watch', 'Accessories', 700, 'Yes');

-- To show all the unique product categories available in the table.
SELECT DISTINCT category FROM product;

-- To select all products that are in stock and have a price less than 500.
SELECT Name FROM product WHERE In_Stock="Yes" AND pricerice<500;

-- To select all products that are not in stock or have a price greater than 1000.
SELECT Name FROM product
WHERE In_Stock="No" OR Price>1000;

-- To show the names and prices of all products, and sort the results by price from highest to lowest.
Select Name,Price FROM product
ORDER BY Price DESC;

-- TO display the name and an expression showing the price with 18% tax added (label it as price_with_tax).
SELECT Name, Price+(Price*0.18) As Price_with_tax
FROM product;