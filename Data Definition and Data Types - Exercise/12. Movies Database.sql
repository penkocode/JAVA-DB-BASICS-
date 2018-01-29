CREATE TABLE directors(

	id INT PRIMARY KEY AUTO_INCREMENT,
	director_name VARCHAR(20) NOT NULL,
	notes TEXT
);

CREATE TABLE genres(

	id INT PRIMARY KEY AUTO_INCREMENT,
	genre_name VARCHAR(50) NOT NULL,
	notes TEXT
);

CREATE TABLE categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
	category_name VARCHAR(50) NOT NULL,
	notes TEXT
);

CREATE TABLE movies(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(50) NOT NULL,
	director_id INT NOT NULL,
	copyright_year YEAR NOT NULL,
	length TIME NOT NULL,
	genre_id INT NOT NULL,
	category_id INT NOT NULL,
	rating INT,
	notes TEXT
);

INSERT INTO directors(director_name) VALUES ('Doku'),('Foku'),('Hoku'),('Joku'),('Yoku');
INSERT INTO genres(genre_name) VALUES ('Baboku'),('Kadooku'),('lopoku'),('Makamoku'),('yajidhoku');
INSERT INTO categories(category_name) VALUES ('Saala'),('bijnkoku'),('sdfaoku'),('gdsoku'),('wqwoku');
INSERT INTO movies(title,director_id,copyright_year,length,genre_id,category_id)
VALUES 
('Demo title',1,'1988','01:10:00',1,1),
('Demo title',2,'1988','1989-01-01 01:10:00',1,1),
('Demo title',3,'1988','1989-01-01 01:10:00',1,1),
('Demo title',4,'1988','1989-01-01 01:10:00',1,1),
('Demo title',4,'1988','1989-01-01 01:10:00',1,1);
