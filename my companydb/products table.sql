USE company;

CREATE TABLE products
(product_Id INT NOT NULL,
 product_name VARCHAR(60) NOT NULL,
 price INT NOT NULL,
 author VARCHAR(15) NOT NULL,
 ISBN_number CHAR(17) NOT NULL,
 PRIMARY KEY(product_Id));
 
 SELECT * FROM products;
 
 INSERT INTO products(product_Id, product_name, price, author, ISBN_number)
 VALUES(4201, 'University Mathematics 1 (txt book)', 2800, 'Mr. AA Oladugba','978-978-912-913-7'),
		(4207, 'Introduction to computer science(workbook)', 2000, 'Mr. Anifowose','978-978-224-561-4'),
        (4209, 'Basic concepts in statistics 2(txt book)', 4500, 'Mrs. Chinedu .C ', '992-991-804-610-0'),
        (4213, 'Advanced AI (txt book)', 13000, 'AKA Mark','977-876-143-221-8');
        
        SELECT * FROM products