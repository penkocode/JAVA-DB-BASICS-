/*CREATE DATABASE demo1;
USE demo1;*/
CREATE table manufacturers(
	manufacturer_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	name VARCHAR(70) NOT NULL,
	established_on DATE 
);
CREATE TABLE models (
    model_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(70),
    manufacturer_id INT,
    CONSTRAINT fk_models_manufacturers FOREIGN KEY (manufacturer_id)
        REFERENCES manufacturers (manufacturer_id)
);
INSERT INTO manufacturers (name,established_on) VALUES ('BMW',STR_TO_DATE('01/03/1916','%d/%m/%Y')),
('Tesla',STR_TO_DATE('01/01/2003','%d/%m/%Y')),
('Lada',STR_TO_DATE('01/05/1966','%d/%m/%Y'));
INSERT INTO models (model_id,name,manufacturer_id) VALUES (101,'X1',1),(102,'i6',1),(103,'Model S',2),(104,'Model X',2),(105,'Model 3',2),(106,'Nova',3);

/*SELECT * FROM manufacturers;
SELECT * FROM models;*/
