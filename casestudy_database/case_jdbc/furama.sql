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

DELIMITER //
create PROCEDURE find_all_facility()
BEGIN
select *
from dich_vu dv;
END //
DELIMITER ;
call find_all_facility();

DELIMITER //
CREATE PROCEDURE insert_new_facility(
					 IN id_facility INT,
                     IN name_facility VARCHAR(45),
                     IN area int,
                     IN cost int,
                     IN max_people int,
                     IN rental_type int,
                     IN facility_type int,
                     IN standard_room VARCHAR(45),
                     IN `description` VARCHAR(45),
                     IN pool_area int,
                     IN number_floor int,
                     IN facility_free VARCHAR(75))
BEGIN
INSERT INTO dich_vu 
VALUES (id_facility,name_facility,area,cost,max_people,rental_type,facility_type,standard_room,`description`,pool_area,number_floor,facility_free);
END //                     
DELIMITER ;

call insert_new_facility(18, 'lồn', 12, 12, 12, 1, 1, 'cặc', 'lồn', 12, 12, 'đầu buồi');

DELIMITER //
create PROCEDURE find_facility_by_key_search(in keySearch varchar(50))
BEGIN
select *
from khach_hang kh join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
where kh.ho_ten like concat('%',keySearch,'%')  or lk.ten_loai_khach like concat('%',keySearch,'%')  or kh.so_dien_thoai like concat('%',keySearch,'%') ;
END //
DELIMITER ;

call find_facility_by_key_search('Member');

DELIMITER //
CREATE PROCEDURE delete_facility(IN id INT)
BEGIN
SET FOREIGN_KEY_CHECKS=0;
	DELETE FROM dich_vu 
	WHERE dich_vu.ma_dich_vu = id;
SET FOREIGN_KEY_CHECKS=1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE edit_facility(
					IN id INT,
                    IN `name` VARCHAR(45),
                    IN area INT,
                    IN deposit DOUBLE,
                    IN max_people INT,
					IN rent_type INT,
					IN facility_type INT,
                    IN standard_room VARCHAR(45),
                    IN `description` VARCHAR(45),
                    IN pool_area DOUBLE,
                    IN number_floor INT,
                    IN facility_free VARCHAR(45))
BEGIN
UPDATE dich_vu
	set
		ten_dich_vu = `name`,
        dien_tich = area,
        chi_phi_thue = deposit,
        so_nguoi_toi_da = max_people,
        ma_kieu_thue = rent_type,
        ma_loai_dich_vu = facility_type,
        tieu_chuan_phong = standard_room,
        mo_ta_tien_nghi_khac = `description`,
        dien_tich_ho_boi = pool_area,
        so_tang = number_floor,
        dich_vu_mien_phi_di_kem = facility_free
WHERE ma_dich_vu = id;
END //
DELIMITER ;