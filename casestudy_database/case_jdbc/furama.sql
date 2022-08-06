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

call delete_customer(1);