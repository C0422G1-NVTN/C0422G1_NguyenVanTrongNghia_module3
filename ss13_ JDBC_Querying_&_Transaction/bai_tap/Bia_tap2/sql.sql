drop database if exists demo;
CREATE DATABASE demo;
USE demo;

CREATE TABLE users (
    id INT(3) NOT NULL AUTO_INCREMENT,
    name VARCHAR(120) NOT NULL,
    email VARCHAR(220) NOT NULL,
    country VARCHAR(120),
    PRIMARY KEY (id)
);

CREATE TABLE Permision (
    id INT(11) PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE User_Permision (
    permision_id INT(11),
    user_id INT(11)
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into usersusers(name, email, country) values('Kante','kante@che.uk','Kenia');
insert into Permision(id, name) values(1, 'add');

insert into Permision(id, name) values(2, 'edit');

insert into Permision(id, name) values(3, 'delete');

insert into Permision(id, name) values(4, 'view');
DELIMITER $$

CREATE PROCEDURE get_user_by_id(IN user_id INT)

BEGIN

    SELECT users.name, users.email, users.country

    FROM users

    where users.id = user_id;

    END$$

DELIMITER ;

  

DELIMITER $$

CREATE PROCEDURE insert_user(

IN user_name varchar(50),

IN user_email varchar(50),

IN user_country varchar(50)

)

BEGIN

    INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);

    END$$

DELIMITER ;