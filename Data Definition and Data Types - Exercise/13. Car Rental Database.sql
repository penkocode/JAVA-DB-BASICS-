CREATE TABLE categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
	category VARCHAR (20) NOT NULL,
	daily_rate DOUBLE (12,3) NOT NULL,
	weekly_rate DOUBLE (17,3) NOT NULL,
	monthly_rate DOUBLE (17,3)NOT NULL,
	weekend_rate DOUBLE (12,3) NOT NULL
);
CREATE TABLE cars (
	id INT PRIMARY KEY AUTO_INCREMENT, 
	plate_number VARCHAR(20) NOT NULL UNIQUE,
	make VARCHAR (30) NOT NULL,
	model VARCHAR (30) NOT NULL,
	car_year YEAR NOT NULL,
	category_id INT NOT NULL,
	doors INT(2) NOT NULL,
	picture BLOB,
	car_condition TEXT(30) NOT NULL,
	available DATE NOT NULL
);
CREATE TABLE employees (
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	title VARCHAR(3),
	notes TEXT
);
CREATE TABLE customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
	driver_licence_number CHAR(50) NOT NULL,
	full_name VARCHAR(80) NOT NULL,
	address VARCHAR (120) NOT NULL,
	city TEXT(60) NOT NULL,
	zip_code VARCHAR(50) NOT NULL,
	notes TEXT
);

CREATE TABLE rental_orders(
	id INT PRIMARY KEY AUTO_INCREMENT,
	employee_id INT NOT NULL,
	customer_id INT NOT NULL,
	car_id INT NOT NULL,
	car_condition VARCHAR(30) NOT NULL,
	tank_level DOUBLE(6,2) NOT NULL,
	kilometrage_start INT NOT NULL,
	kilometrage_end INT NOT NULL,
	total_kilometrage INT NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	total_days INT NOT NULL,
	rate_applied DOUBLE (5,2) NOT NULL,
	tax_rate DOUBLE (5,2)NOT NULL,
	order_status VARCHAR (22) NOT NULL,
	notes TEXT
);

INSERT INTO categories (id, category, daily_rate, weekly_rate, monthly_rate, weekend_rate)
VALUES (1,'QW','21.20','20.20','20.20','12.22'),(2,'QW','21.20','20.20','20.20','12.22'),(3,'QW','21.20','20.20','20.20','12.22');
INSERT INTO cars (id, plate_number,make,model,car_year,category_id,doors,picture,car_condition,available)
VALUES (1,'A9144ZS','HONDA','ACURA','2007',1,'2',NULL,'USED','2018-01-01'),
(2,'A9244ZS','HONDA','ACURA','2007',1,'2',NULL,'USED','2018-01-01'),(3,'A9344ZS','HONDA','ACURA','2007',2,'2',NULL,'USED','2018-01-01');
INSERT INTO employees (id,first_name, last_name, title, notes)
VALUES (1,'IVAeN','DRAGANOFF','MR',NULL),(2,'IVN','DRAGANOFF','MR',NULL),(3,'IVAN','DRAGANOFF','MR',NULL);
INSERT INTO customers (id,driver_licence_number,full_name,address, city,zip_code,notes)
VALUES (1,'FFE312EEE1','DALA BALA','DE 33 CASDF','BURGAS','8000',NULL),(2,'FFE312EEE1','DALA BALA','DE 33 CASDF','BURGAS','8000',NULL),
(3,'FFE312EEE1','DALA BALA','DE 33 CASDF','BURGAS','8000',NULL);
INSERT INTO rental_orders (id,employee_id,customer_id, car_id, car_condition, tank_level,kilometrage_start, kilometrage_end, total_kilometrage,
start_date, end_date,total_days, rate_applied, tax_rate, order_status, notes)
VALUES (1,1,1,1,'USED','32','123321','123333','12','2018-01-01','2018-01-01','1','10.5','2.4','OK',NULL),
(2,1,1,1,'USED','32','123321','123333','12','2018-01-01','2018-01-01','1','10.5','2.4','OK',NULL),
(3,1,1,1,'USED','32','123321','123333','12','2018-01-01','2018-01-01','1','10.5','2.4','OK',NULL);