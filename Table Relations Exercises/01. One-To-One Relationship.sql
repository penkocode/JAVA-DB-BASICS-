/*CREATE DATABASE demo;
USE demo;*/
CREATE TABLE persons(
		person_id INT NOT NULL,
        first_name VARCHAR(50) NOT NULL,
        salary DECIMAL(10,2),
        passport_id INT UNIQUE
);
CREATE TABLE passports(
		passport_id INT NOT NULL UNIQUE ,
        passport_number VARCHAR (50) NOT NULL
);
INSERT INTO persons(person_id,first_name,salary,passport_id) VALUES (1,'Roberto',43300.00,102),(2,'Tom',56100.00,103),(3,'Yana',60200.00,101);
INSERT INTO passports(passport_id,passport_number) VALUES (101,'N34FG21B'),(102,'K65LO4R7'),(103,'ZE657QP2');
ALTER TABLE persons
ADD CONSTRAINT pk_person_id PRIMARY KEY (person_id);
ALTER TABLE passports
ADD CONSTRAINT pk_passports_id PRIMARY KEY (passport_id);
ALTER TABLE persons
ADD CONSTRAINT fk_persons_passports FOREIGN KEY(passport_id)
REFERENCES passports(passport_id);
/*
SELECT * FROM persons,passports;*/