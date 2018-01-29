CREATE TABLE users(
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR (30) NOT NULL UNIQUE,
	password VARCHAR (26) NOT NULL,
	profile_picture BLOB,
	last_login_time TIME,
	is_deleted BOOLEAN
);
INSERT INTO users (id,username,password,profile_picture,last_login_time,is_deleted) VALUES
(1,'reimon','39ee93aBB',NULL,'04:11:22',false),(2,'himon','39wef393aBB',NULL,'12:11:22',false),
(3,'bimon','39rrrrr3aBB',NULL,'05:11:22',true),(4,'oimon','393Lll93aBB',NULL,'04:11:22',false),
(5,'zimon','39393ew!2eaBB',NULL,'22:11:22',true);
