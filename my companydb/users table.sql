USE company;

CREATE TABLE users
(user_Id INT NOT NULL,
 user_name VARCHAR(45) NOT NULL,
 product_Id INT NOT NULL,
 user_address VARCHAR(45) NOT NULL,
 PRIMARY KEY(user_Id),
 FOREIGN KEY (product_Id) references products(product_Id));
 
 SELECT * FROM users;
 
 INSERT INTO users(user_Id, user_name, product_Id, user_address)
 VALUES( 1, 'Adeyemi Oluwaseun', 4213, 'Boladale Avenue'),
		(2, 'Chibuike Chisom', 4207, 'Asake close'),
        (3, 'Okafor Perpetual', 4201, 'Agric Estate'),
        (4, 'Eliel Godsent', 4209, 'gwarinmpa');
        
		SELECT * FROM users;
