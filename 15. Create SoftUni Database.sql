CREATE DATABASE soft_uni;
USE soft_uni;

CREATE TABLE towns (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (60) NOT NULL
   
);
CREATE TABLE addresses (
	id INT PRIMARY KEY AUTO_INCREMENT,
    address_text VARCHAR (200) NOT NULL,
    town_id INT,
    constraint `fk_town_id` foreign key (town_id) references towns(id)
);
CREATE TABLE departments (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (60) NOT NULL
    
);
CREATE TABLE employees (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR (50) NOT NULL,
    middle_name NVARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    job_title VARCHAR (50),
    department_id INT,
    hire_date DATE,
    salary DECIMAL,
    address_id INT,
    CONSTRAINT `fk_department_id` FOREIGN KEY(department_id) REFERENCES departments(id),
    CONSTRAINT `fk_address_id` FOREIGN KEY(address_id) REFERENCES addresses(id)
);


INSERT INTO towns (name) VALUES ('Sofia'),('Plovdiv'),('Varna'), ('Burgas');
INSERT INTO departments (name) VALUES ('Engineering'),('Sales'), ('Marketing'), ('Software Development'), ('Quality Assurance');
INSERT INTO employees (first_name,middle_name,last_name,job_title,department_id,hire_date,salary,address_id)
VALUES 
('Ivan','Ivanov','Ivanov','.NET Developer','4',str_to_date('01/02/2013','%d/%m/%Y'),'3500.00',NULL),
('Petar','Petrov','Petrov','Senior Engineer','1',str_to_date('02/03/2004','%d/%m/%Y'),'4000.00',NULL),
('Maria','Petrova','Ivanova','Intern','5',str_to_date('28/08/2016','%d/%m/%Y'),'525.25',NULL),
('Georgi','Terziev','Ivanov','CEO','2',str_to_date('09/12/2007','%d/%m/%Y'),'3000.00',NULL),
('Peter','Pan','Pan','Intern','3',str_to_date('28/08/2016','%d/%m/%Y'),'599.88',NULL);


