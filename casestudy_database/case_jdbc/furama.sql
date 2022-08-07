use case_study;
DELIMITER //
create PROCEDURE find_all_customer()
BEGIN
select *
from khach_hang;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE edit_customer(
					 IN id INT,
					 IN type_id INT,
                     IN name VARCHAR(45),
                     IN date_of_birth DATE,
                     IN gender BIT(1),
                     IN id_card VARCHAR(45),
                     IN phone_number VARCHAR(45),
                     IN email VARCHAR(45),
                     IN address VARCHAR(45))
BEGIN
UPDATE khach_hang kh
	SET ma_loai_khach = type_id,
	    ho_ten = name,
	    ngay_sinh = date_of_birth,
		gioi_tinh = gender,
		so_cmnd = id_card,
		so_dien_thoai = phone_number,
		dia_chi = address
WHERE kh.ma_khach_hang = id AND 
		ma_loai_khach IN (SELECT lk.ma_loai_khach FROM loai_khach lk);
END //                     
DELIMITER ;

DELIMITER //
CREATE PROCEDURE delete_customer(IN id INT)
BEGIN
SET FOREIGN_KEY_CHECKS=0;
	DELETE FROM khach_hang 
	WHERE khach_hang.ma_khach_hang = id;
SET FOREIGN_KEY_CHECKS=1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE insert_new_customer(
					 IN id INT,
					 IN type_id INT,
                     IN name VARCHAR(45),
                     IN date_of_birth DATE,
                     IN gender BIT(1),
                     IN id_card VARCHAR(45),
                     IN phone_number VARCHAR(45),
                     IN email VARCHAR(45),
                     IN address VARCHAR(45))
BEGIN
INSERT INTO khach_hang 
VALUES (id, type_id, name, date_of_birth, gender, id_card, phone_number, email, address);
END //                     
DELIMITER ;

call insert_new_customer(15,2,"Nghia","1992-08-08",1,324234234,23131313,"nghianf@gmail.com","12 Bang Lang 3");

DELIMITER //
create PROCEDURE find_customer_by_id(in customer_id int)
BEGIN
select *
from khach_hang kh 
where kh.ma_khach_hang = customer_id;
END //
DELIMITER ;

call find
