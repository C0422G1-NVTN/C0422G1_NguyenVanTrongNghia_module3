drop database if exists view_index_db;
create database view_index_db;
use view_index_db;
CREATE TABLE Products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_code INT,
    product_name VARCHAR(25),
    product_price INT,
    product_amount INT,
    product_descriptio VARCHAR(20),
    product_status VARCHAR(20)
);

insert into Products(id,product_code,product_name,product_price,product_amount,product_descriptio,product_status)
values(1,123,'Milk',10000,300,'nhập khẩu','còn hàng'),
(2,124,'Cake',5000,200,'nội địa','còn hàng'),
(3,125,'Candy',10000,500,'nhập khẩu','còn hàng');

-- BƯỚC 3-- 
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)-- 
create unique index i_product_code on Products(product_code);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)-- 
create index i_composite_product on Products(product_name,product_price);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào-- 
explain select *
from Products P
where P.product_name = 'Milk' and P.product_price = '10000';

-- So sánh câu truy vấn trước và sau khi tạo index-- 
drop index i_composite_product on Products;
explain select *
from Products P
where P.product_name = 'Milk' and P.product_price = '10000';

-- BƯỚC 4-- 
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.-- 
create view w_products as
select product_code,product_name,product_price,product_status
from Products ;
select * from w_products;

-- Tiến hành sửa đổi view-- 
CREATE OR REPLACE VIEW w_products AS
SELECT product_code,product_name,product_price,product_status
FROM Products
WHERE product_name = 'Candy';

-- Tiến hành xoá view--
drop view w_products; 

-- BƯỚC 5-- 
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product-- 
delimiter $$
create procedure sp_products()
begin 
	select*
	from products;
end $$
delimiter ;
call sp_products();

-- Tạo store procedure thêm một sản phẩm mới-- 
delimiter //
create procedure add_products (new_productCode int,new_productName varchar(25),new_productPrice int,
new_productAmount int, new_productDescription varchar(20), new_productStatus varchar(20))
begin
	insert into Products (product_code,product_name,product_price,product_amount,product_description,product_status)
    values (new_productCode,new_productName,new_productPrice,new_productAmount,new_productDescription,new_productStatus);
end //
delimiter ;
call add_products(4,'Shirt',10000,20,'nhập khẩu','còn hàng');

-- Tạo store procedure sửa thông tin sản phẩm theo id-- 
delimiter //
create procedure edit_products (find_id int, new_price double)
begin
	update Products 
    set product_price = new_price
    where id = find_id;
end //
delimiter ;
call edit_products (2,50000);

-- Tạo store procedure xoá sản phẩm theo id-- 
delimiter //
create procedure delete_products (find_id int)
begin
	delete from Products
    where id = find_id;
end //
delimiter ;
call delete_products(3);