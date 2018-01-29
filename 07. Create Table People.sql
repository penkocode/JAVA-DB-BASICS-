CREATE TABLE people(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR (200) NOT NULL,
	picture BLOB,
	height DOUBLE (3,2),
	weight DOUBLE (5,2),
	gender ENUM ('m','f') NOT NULL,
	birthdate DATE NOT NULL,
	biography TEXT
);

INSERT INTO people (id,name,picture,height,weight,gender,birthdate,biography) VALUES
(1,'Dimon',NULL,1.56,65.55,'m','1983-11-01',NULL),(2,'Simon',NULL,9.56,55.55,'m','1999-01-01',NULL),
(3,'Himon',NULL,2.56,65.75,'m','1986-04-01',NULL),(4,'Kimon',NULL,7.56,50.00,'m','2001-11-01',NULL),
(5,'Limon',NULL,4.56,47.85,'m','1984-01-01',NULL);
