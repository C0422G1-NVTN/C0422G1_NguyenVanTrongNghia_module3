create database 01_db;
use 01_db;
create table class(
id int primary key auto_increment,
`name` varchar(30)
);
insert into class (`name`) values ('nghia'),('son');
select * from class;
create table teacher (
id int primary key auto_increment,
`name` varchar(45),
age int,
country varchar(16)
);
insert into teacher (`name`,age,country) values ('nghia',24,'viet nam'),('son',24,'viet nam');
select * from teacher;