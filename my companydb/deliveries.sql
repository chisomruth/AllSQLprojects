USE company;

CREATE TABLE deliveries
(delivery_Id VARCHAR(9) NOT NULL,
delivery_date DATE NOT NULL, 
 product_Id INT NOT NULL,
 user_Id INT NOT NULL,
 delivery_status VARCHAR(10) NOT NULL,
 PRIMARY KEY(delivery_Id),
 FOREIGN KEY (product_Id) REFERENCES products(product_Id),
 FOREIGN KEY (user_Id) REFERENCES users(user_Id));
 
 SELECT * FROM deliveries;
 
 INSERT INTO deliveries(delivery_Id, delivery_date, product_Id, user_Id, delivery_status)
 VALUES('002-03-ST', '2022-10-30', 4201, 3, 'RECIEVED'),
		('002-01-MN', '2022-11-1', 4213, 1, 'RECIEVED' ),
		('002-02-PQ', '2022-11-3', 4207, 2, 'PENDING'),
        ('002-04-VW', '2022-11-3', 4209, 4, 'PENDING');
        
		SELECT * FROM deliveries;