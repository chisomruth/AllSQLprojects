Use ruthy_stores;

-- Creating the students table with constraints in each column for ruthy_stores
CREATE TABLE students
(stud_Id INT NOT NULL ,
 stud_name VARCHAR(45) NOT NULL,
 stud_dept VARCHAR(45) NOT NULL,
 PRIMARY KEY(stud_Id));
-- Inserting required data into the students columns
 INSERT INTO students(stud_Id, stud_name, stud_dept)
 VALUES (1001, 'Bosede bukunmi', 'Archeology'),
 (1002, 'Amanchukwu IKenna', 'MAthematics'),
 (1003, 'Akanmi gbenga',  'Physics and astronomy'),
 (1004, 'Chibuike chisom' , 'Mathematics'),
 (1005, 'Richard saviour', 'International relations');
 
 
 -- Creating the book_purchase table with constraints in each column for ruthy_stores
 CREATE TABLE book_purchase
 (book_Id INT NOT NULL,
 stud_Id INT NOT NULL,
 books VARCHAR(45) NOT NULL,
 attendant VARCHAR(45) NOT NULL,
 purchase_date DATE NOT NULL,
 PRIMARY KEY(book_Id),
 FOREIGN KEY(stud_Id) REFERENCES students(stud_Id));
-- Inserting required data into book_purchase columns
  INSERT INTO book_purchase(book_Id, stud_Id, books, attendant, purchase_date)
 VALUES (001, 1001, 'Histororical Archeology',  'Attendant M', '2023-01-04'),
 (002, 1003,'Basic concepts in physics', 'Attendant J', '2023-01-11'),
 (003, '1003', 'electrons in space','Attendant D', '2023-01-21' ),
 (004, '1004', 'University mathematics' , 'Attendant M', '2023-01-22');
 
 
-- Creating the course_reg table with constraints in each column for ruth_stores
CREATE TABLE course_reg
 (course_Id VARCHAR(10) NOT NULL,
 stud_Id INT NOT NULL,
 course_code VARCHAR(7) NOT NULL,
 reg_date DATE NOT NULL,
 PRIMARY KEY(course_Id),
 FOREIGN KEY(stud_Id) REFERENCES students(stud_Id));
-- Inserting required data into course_reg columns
  INSERT INTO course_reg(course_Id, stud_Id, course_code, reg_date)
 VALUES ('UNN/MTH/01', 1004, 'MTH011', '2022-12-17'),
 ('UNN/PnA/12', 1003, 'PnA121', '2022-12-19'),
 ('UNN/ARC/20', 1001, 'ARCH201', '2023-01-15'),
 ('UNN/IR/11', 1005, 'IR111', '2023-01-20'),
 ('UNN/MTH/02', 1002, 'MTH021', '2023-01-20');
 
 -- To add price column into book_purchase table
 ALTER TABLE book_purchase
 ADD price INT NOT NULL;
-- populating the price column
UPDATE book_purchase
SET price =2000
WHERE book_Id = 1;
UPDATE book_purchase
SET price = 3500
WHERE book_Id = 2;
UPDATE book_purchase
SET price =1550
WHERE book_Id = 3;
UPDATE book_purchase
SET price = 700
WHERE book_Id = 4;

-- Transaction to drop the attendant column in book_purchase table
START TRANSACTION;
ALTER TABLE book_purchase
DROP COLUMN attendant;
COMMIT;


-- Querying ruthy_stores database using functions and statements

-- (1) To get all courses registered in year 2022
SELECT * 
FROM course_reg
WHERE reg_date LIKE ('2022%');

-- (2) To get the average price of all the books purchased
SELECT AVG(price) Avg_price
FROM book_purchase;

-- (3)To get the names and department of students that bought books and registered their course including their registration date.
SELECT s.stud_name, s.stud_dept, b.books, c.course_code, c.reg_date
FROM students s
JOIN course_reg c
ON s.stud_Id = c.stud_Id
JOIN book_purchase b
ON s.stud_Id = b.stud_Id;


-- Locking the whole tables in ruthy_stores database
LOCK TABLES book_purchase WRITE;
LOCK TABLES course_reg WRITE;
LOCK TABLES students WRITE;

-- To unlock the tables in ruthy_stores database
UNLOCK TABLES;










 
 
 
 
 


 
  
 
 
 
 
 
 

 
