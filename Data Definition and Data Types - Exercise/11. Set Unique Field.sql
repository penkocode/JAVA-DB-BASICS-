ALTER TABLE users
DROP PRIMARY KEY,
MODIFY username varchar(30) not null unique,
add constraint pk_users primary key (id);