drop database QuanLyBanHang;
create database QuanLyBanHang;
use QuanLyBanHang;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(25),
    customer_age TINYINT
);

CREATE TABLE `Order` (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES Customer (customer_id),
    order_date DATETIME,
    order_total_price INT
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(25),
    product_price INT
);

CREATE TABLE OrderDetail (
    order_id INT,
    product_id INT,
    PRIMARY KEY (order_id , product_id),
    FOREIGN KEY (order_id)
        REFERENCES `Order` (order_id),
    FOREIGN KEY (product_id)
        REFERENCES Product (product_id),
    Order_Detail_QTY INT
);

insert into Customer(customer_id,customer_name,customer_age)
values(1,"Minh Quan",10),
(2,"Ngoc Anh",20),
(3,"Hong Ha",50);

insert into `Order`(order_id,customer_id,order_date,order_total_price)
values(1,1,"2006-03-21",null),
(2,2,"2006-03-26",null),
(3,1,"2006-03-16",null);

insert into Product(product_id,product_name,product_price)
values(1,"May Giat",3),
(2,"Tu Lanh",5),
(3,"Dieu Hoa",7),
(4,"Quat",1),
(5,"Bep Dien",2);

insert into OrderDetail(order_id,product_id,order_detail_QTY)
values(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

SELECT 
    order_id, order_date, order_total_price
FROM
    `Order`;

SELECT 
    c.customer_name, p.product_name, o.order_date
FROM
    Customer c
        JOIN
    `Order` o ON c.customer_id = o.customer_id
        JOIN
    OrderDetail od ON od.order_id = o.order_id
        JOIN
    Product p ON p.product_id = od.product_id;

SELECT 
    c.customer_name, o.order_date, c.customer_id
FROM
    Customer c
        LEFT JOIN
    `Order` o ON c.customer_id = o.customer_id
WHERE
    order_date IS NULL;

SELECT 
    od.order_id,
    c.customer_name,
    o.order_date,
    SUM(od.order_detail_qty * p.product_price) AS sum_price
FROM
    Customer c
        JOIN
    `Order` o ON c.customer_id = o.customer_id
        JOIN
    OrderDetail od ON od.order_id = o.order_id
        JOIN
    Product p ON p.product_id = od.product_id
GROUP BY od.order_id;

