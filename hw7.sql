-- Table creation
CREATE TABLE `school`.`mobileapp` (`id` INT NOT NULL AUTO_INCREMENT , `name` VARCHAR(25) NOT NULL , `city` VARCHAR(25) NOT NULL , `score` INT NOT NULL , `bonus` INT NULL , `challenge` VARCHAR(25) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

-- Value inserting
INSERT INTO mobileapp 
VALUES (1,"Raj","Chennai",88,5,"Fitness"), 
(2,"Anu","Mumbai",91,NULL,"Diet"), 
(3,"Ravi","Chennai",78,3,"Fitness"), 
(4,"Meena","Delhi",82,NULL,"Diet"), 
(5,"Farah","Mumbai",95,4,"Fitness"), 
(6,"Kiran","Pune",70,NULL,"Yoga"), 
(7,"Latha","Pune",87,NULL,"Fitness");


-- To show the details of users whose score is greater than the average score across all users.
SELECT *FROM mobileapp
WHERE score>(SELECT AVG(score) FROM mobileapp);

-- TO display the names of users who are participating in the same challenge as the user named 'Farah'.
SELECT name FROM mobileapp 
WHERE challenge=(SELECT challenge FROM mobileapp WHERE name='Farah');
