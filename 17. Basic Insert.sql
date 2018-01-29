INSERT INTO towns (name) VALUES ('Sofia'),('Plovdiv'),('Varna'), ('Burgas');
INSERT INTO departments (name) VALUES ('Engineering'),('Sales'), ('Marketing'), ('Software Development'), ('Quality Assurance');
INSERT INTO employees (first_name,middle_name,last_name,job_title,department_id,hire_date,salary,address_id)
VALUES 
('Ivan','Ivanov','Ivanov','.NET Developer','4',str_to_date('01/02/2013','%d/%m/%Y'),'3500.00',NULL),
('Petar','Petrov','Petrov','Senior Engineer','1',str_to_date('02/03/2004','%d/%m/%Y'),'4000.00',NULL),
('Maria','Petrova','Ivanova','Intern','5',str_to_date('28/08/2016','%d/%m/%Y'),'525.25',NULL),
('Georgi','Terziev','Ivanov','CEO','2',str_to_date('09/12/2007','%d/%m/%Y'),'3000.00',NULL),
('Peter','Pan','Pan','Intern','3',str_to_date('28/08/2016','%d/%m/%Y'),'599.88',NULL);
