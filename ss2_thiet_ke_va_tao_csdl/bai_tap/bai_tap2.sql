drop database if exists baitap2_ss2;

create database baitap2_ss2;
use baitap2_ss2;

CREATE TABLE Customer (
    cId INT PRIMARY KEY AUTO_INCREMENT,
    cName VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    CHECK (age >= 18)
);

CREATE TABLE `Order` (
    oId INT PRIMARY KEY AUTO_INCREMENT,
    cId INT,
    oDate DATE NOT NULL,
    oTotalprice DOUBLE,
    FOREIGN KEY (cId)
        REFERENCES Customer (cId)
);

CREATE TABLE Product (
    pId INT PRIMARY KEY AUTO_INCREMENT,
    pName VARCHAR(45) NOT NULL,
    pPrice DOUBLE
);

CREATE TABLE OrderDetail (
    oId INT,
    pId INT,
    odQTY VARCHAR(50),
    FOREIGN KEY (oId)
        REFERENCES `order` (oId),
    FOREIGN KEY (pId)
        REFERENCES product (pId)
);