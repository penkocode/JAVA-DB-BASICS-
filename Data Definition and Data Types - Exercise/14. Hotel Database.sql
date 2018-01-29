CREATE DATABASE hotel;
USE hotel;
CREATE TABLE employees(
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name NVARCHAR (50) NOT NULL,
	last_name NVARCHAR (50) NOT NULL,
	title NVARCHAR(50) NOT NULL,
	notes TEXT
);
CREATE TABLE customers(
	account_number NVARCHAR(25) PRIMARY KEY, 
    first_name NVARCHAR (50) NOT NULL, 
    last_name NVARCHAR (50) NOT NULL, 
    phone_number NVARCHAR (50) NOT NULL, 
    emergency_name NVARCHAR (50),
    emergency_number NVARCHAR (50),
    notes TEXT

);
CREATE TABLE room_status(
		room_status NVARCHAR (50) PRIMARY KEY,
        notes TEXT

);

CREATE TABLE room_types(
		room_type NVARCHAR (50) PRIMARY KEY, 
        notes TEXT

);

CREATE TABLE bed_types (
		bed_type NVARCHAR (50) PRIMARY KEY, 
        notes TEXT

);

CREATE TABLE rooms(
		room_number INT PRIMARY KEY, 
        room_type NVARCHAR (50) NOT NULL, 
        bed_type NVARCHAR (50) NOT NULL, 
        rate INT, 
        room_status NVARCHAR (50) NOT NULL, 
		notes TEXT

);

CREATE TABLE payments (
		id INT AUTO_INCREMENT PRIMARY KEY,
        employee_id INT NOT NULL,
        payment_date DATE NOT NULL,
        account_number NVARCHAR (50) NOT NULL,
        first_date_occupied DATE ,
        last_date_occupied DATE ,
        total_days INT ,
        amount_charged DECIMAL NOT NULL,
        tax_rate DECIMAL,
        tax_amount DECIMAL NOT NULL,
        payment_total DECIMAL NOT NULL,
        notes TEXT

);

CREATE TABLE occupancies (
		id INT AUTO_INCREMENT PRIMARY KEY, 
        employee_id INT NOT NULL,
        date_occupied DATE NOT NULL,
        account_number NVARCHAR (50) NOT NULL,
        room_number INT NOT NULL,
        rate_applied INT,
        phone_charge DECIMAL,
        notes TEXT

);

INSERT INTO employees(first_name,last_name,title,notes) VALUES ('Alter','Ego','Manager',NULL),
('Deko','Ego','Area Manager',NULL),('Konard','Ego','Manager',NULL);

INSERT INTO customers(account_number,first_name,last_name,phone_number,emergency_name,emergency_number,notes) VALUES ('1','Lo','Bo','0088855554','Lenard','555999555', NULL),
('2','Ao','Lo','0033855554','Snart','444999555', NULL),('3','Kao','Bo','0088455554','Lenards','255999555', NULL);

INSERT INTO room_status(room_status,notes) VALUES ('0',NULL),('2',NULL),('3',NULL);

INSERT INTO room_types(room_type,notes) VALUES ('D',NULL),('B',NULL),('S',NULL);

INSERT INTO bed_types(bed_type,notes) VALUES ('d1',NULL),('d2',NULL),('d3',NULL);

INSERT INTO rooms (room_number,room_type,bed_type,rate,room_status,notes) VALUES ('15','Single','Double','20.00','Available',NULL),
('12','Double','Double','22.00','Not Availbale',NULL),('13','Single','Double','20.00','Available',NULL);

INSERT INTO payments (employee_id,payment_date,account_number,first_date_occupied,last_date_occupied,total_days,amount_charged,tax_rate,tax_amount,payment_total,notes)
VALUES('1','2018-01-22','1','2018-01-22','2018-01-24','3','100','0.20','10','110',NULL),('2','2018-01-22','2','2018-01-22','2018-01-24','3','100','0.20','10','110',NULL),
('3','2018-01-22','3','2018-01-22','2018-01-24','3','100','0.20','10','110',NULL);

INSERT INTO occupancies (employee_id,date_occupied,account_number,room_number,rate_applied,phone_charge,notes) VALUES ('1','2018-01-22','235','22','0.20','20.35',NULL),
('2','2018-01-12','135','11','0.20','10.35',NULL),('3','2018-01-20','245','21','0.20','20.11',NULL);
