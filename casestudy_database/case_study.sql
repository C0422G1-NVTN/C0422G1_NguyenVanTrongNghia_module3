drop database if exists case_study;
create database case_study;
use case_study;

CREATE TABLE vi_tri (
    ma_vi_tri INT PRIMARY KEY AUTO_INCREMENT,
    ten_vi_tri VARCHAR(45)
);

CREATE TABLE trinh_do (
    ma_trinh_do INT PRIMARY KEY AUTO_INCREMENT,
    ten_trinh_do VARCHAR(45)
);

CREATE TABLE bo_phan (
    ma_bo_phan INT PRIMARY KEY AUTO_INCREMENT,
    ten_bo_phan VARCHAR(45)
);

CREATE TABLE nhan_vien (
    ma_nhan_vien INT PRIMARY KEY AUTO_INCREMENT,
    ho_ten VARCHAR(45) NOT NULL,
    ngay_sinh DATE NOT NULL,
    so_cmnd VARCHAR(45) NOT NULL,
    luong DOUBLE NOT NULL,
    so_dien_thoai VARCHAR(45) NOT NULL,
    email VARCHAR(45),
    dia_chi VARCHAR(45),
    ma_vi_tri INT,
    ma_trinh_do INT,
    ma_bo_phan INT,
    FOREIGN KEY (ma_vi_tri)
        REFERENCES case_study.vi_tri (ma_vi_tri),
    FOREIGN KEY (ma_trinh_do)
        REFERENCES case_study.trinh_do (ma_trinh_do),
    FOREIGN KEY (ma_bo_phan)
        REFERENCES case_study.bo_phan (ma_bo_phan)
);

CREATE TABLE loai_khach (
    ma_loai_khach INT PRIMARY KEY AUTO_INCREMENT,
    ten_loai_khach VARCHAR(45)
);

CREATE TABLE khach_hang (
    ma_khach_hang INT PRIMARY KEY AUTO_INCREMENT,
    ma_loai_khach INT,
    FOREIGN KEY (ma_loai_khach)
        REFERENCES case_study.loai_khach (ma_loai_khach),
    ho_ten VARCHAR(45) NOT NULL,
    ngay_sinh DATE NOT NULL,
    gioi_tinh BIT(1) NOT NULL,
    so_cmnd VARCHAR(45) NOT NULL,
    so_dien_thoai VARCHAR(45) NOT NULL,
    email VARCHAR(45),
    dia_chi VARCHAR(45)
);


CREATE TABLE loai_dich_vu (
    ma_loai_dich_vu INT PRIMARY KEY AUTO_INCREMENT,
    ten_loai_dich_vu VARCHAR(45)
);

CREATE TABLE kieu_thue (
    ma_kieu_thue INT PRIMARY KEY AUTO_INCREMENT,
    ten_kieu_thue VARCHAR(45)
);

CREATE TABLE dich_vu (
    ma_dich_vu INT PRIMARY KEY AUTO_INCREMENT,
    ten_dich_vu VARCHAR(45) NOT NULL,
    dien_tich INT,
    chi_phi_thue DOUBLE NOT NULL,
    so_nguoi_toi_da INT,
    ma_kieu_thue INT,
    FOREIGN KEY (ma_kieu_thue)
        REFERENCES case_study.kieu_thue (ma_kieu_thue),
    ma_loai_dich_vu INT,
    FOREIGN KEY (ma_loai_dich_vu)
        REFERENCES case_study.loai_dich_vu (ma_loai_dich_vu),
    tieu_chuan_phong VARCHAR(45),
    mo_ta_tien_nghi_khac VARCHAR(45),
    dien_tich_ho_boi DOUBLE,
    so_tang INT,
    dich_vu_mien_phi_di_kem TEXT
);

CREATE TABLE dich_vu_di_kem (
    ma_dich_vu_di_kem INT PRIMARY KEY AUTO_INCREMENT,
    ten_dich_vu_di_kem VARCHAR(45) NOT NULL,
    gia DOUBLE NOT NULL,
    don_vi VARCHAR(10) NOT NULL,
    trang_thai VARCHAR(45)
);

CREATE TABLE hop_dong (
    ma_hop_dong INT PRIMARY KEY AUTO_INCREMENT,
    ngay_lam_hop_dong DATETIME NOT NULL,
    ngay_ket_thuc DATETIME NOT NULL,
    tien_dat_coc DOUBLE NOT NULL,
    ma_nhan_vien INT,
    FOREIGN KEY (ma_nhan_vien)
        REFERENCES case_study.nhan_vien (ma_nhan_vien),
    ma_khach_hang INT,
    FOREIGN KEY (ma_khach_hang)
        REFERENCES case_study.khach_hang (ma_khach_hang),
    ma_dich_vu INT,
    FOREIGN KEY (ma_dich_vu)
        REFERENCES case_study.dich_vu (ma_dich_vu)
);

CREATE TABLE hop_dong_chi_tiet (
    ma_hop_dong_chi_tiet INT PRIMARY KEY AUTO_INCREMENT,
    ma_hop_dong INT,
    FOREIGN KEY (ma_hop_dong)
        REFERENCES case_study.hop_dong (ma_hop_dong),
    ma_dich_vu_di_kem INT,
    FOREIGN KEY (ma_dich_vu_di_kem)
        REFERENCES case_study.dich_vu_di_kem (ma_dich_vu_di_kem),
    so_luong INT NOT NULL
);

insert into vi_tri(ma_vi_tri,ten_vi_tri)
values  (1,"Qu???n L??") ,
		(2,"Nh??n Vi??n") ;

insert into trinh_do(ma_trinh_do,ten_trinh_do)
values (1,"Trung c???p") ,
(2,"Cao ?????ng"),
(3,"?????i h???c"),
(4,"Sau ?????i h???c");

insert into bo_phan(ma_bo_phan,ten_bo_phan)
values(1,"Sale-Marketing"),
(2,"H??nh ch??nh"),
(3,"Ph???c v???"),
(4,"Qu???n l??");

insert into nhan_vien(ma_nhan_vien,ho_ten,ngay_sinh,so_cmnd,luong,so_dien_thoai,email,dia_chi,ma_vi_tri,ma_trinh_do,ma_bo_phan)
values(1,"Nguy???n V??n An","1970-11-07",456231786,10000000,0901234121,"annguyen@gmail.com","295 Nguy???n T???t Th??nh ???? N???ng",1,3,1),
(2,"L?? V??n B??nh","1997-04-09",654231234,7000000,0934212314,"binhlv@gmail.com","22 Y??n B??i, ???? N???ng",1,2,2),
(3,"H??? Th??? Y???n","1995-12-12",999231723,14000000,0412352315,"thiyen@gmail.com","K234/11 ??i???n Bi??n Ph???,Gia Lai",1,3,2),
(4,"V?? C??ng To???n","1980-04-04",123231365,17000000,0374443232,"toan0404@gmail.com","77 Ho??ng Di???u, Qu???ng Tr???",1,4,4),
(5,"Nguy???n B???nh Ph??t","1999-12-09",454363232,6000000,0902341231,"phatphat@gmail.com","43 Y??n B??i, ???? N???ng",2,1,1),
(6,"Kh??c Nguy???n An Nghi","2000-11-08",964542311,7000000,0978653213,"annghi20@gmail.com","294 Nguy???n T???t Th??nh, ???? N???ng",2,2,3),
(7,"Nguy???n H???u H??","1993-01-01",534323231,8000000,0941234553,"nhh0101@gmail.com","4 Nguy???n Ch?? Thanh, Hu???",2,3,2),
(8,"Nguy???n H?? ????ng","1989-09-03",234414123,9000000,0642123111,"donghanguyen@gmail.com","111 H??ng V????ng, H?? N???i",2,4,4),
(9,"T??ng Hoang","1982-09-03",256781231,6000000,0245144444,"hoangtong@gmail.com","213 H??m Nghi, ???? N???ng",2,4,4),
(10,"Nguy???n C??ng ?????o","1994-01-08",755434343,8000000,0988767111,"nguyencongdao12@gmail.com","6 Ho?? Kh??nh, ?????ng Nai",2,3,2);

insert into loai_khach(ma_loai_khach,ten_loai_khach)
values(1,"Diamond"),
(2,"Platinium"),
(3,"Gold"),
(4,"Silver"),
(5,"Member");

INSERT INTO case_study.khach_hang (ma_khach_hang,ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi,ma_loai_khach)
 VALUES (1,"Nguy???n Th??? H??o","1970-11-07",0,643431213,0945423362,"thihao07@gmail.com","23 Nguy???n Ho??ng, ???? N???ng",5),
 (2,"Ph???m Xu??n Di???u","1992-08-08",1,865342123,0954333333,"xuandieu92@gmail.com","K77/22 Th??i Phi??n, Qu???ng Tr???",3),
(3,"Tr????ng ????nh Ngh???","1990-02-27",1,488645199,0373213122,"nghenhan2702@gmail.com","K323/12 ??ng ??ch Khi??m, Vinh",1),
(4,"D????ng V??n Quan","1981-07-08",1,543432111,0490039241,"duongquan@gmail.com","K453/12 L?? L???i, ???? N???ng",1),
(5,"Ho??ng Tr???n Nhi Nhi","1995-12-09",0,795453345,0312345678,"nhinhi123@gmail.com","224 L?? Th??i T???, Gia Lai",4),
(6,"T??n N??? M???c Ch??u","2005-12-06",0,732434215,0988888844,"tonnuchau@gmail.com","37 Y??n Th???, ???? N???ng",4),
(7,"Nguy???n M??? Kim","1984-04-08",0,856453123,0912345698,"kimcuong84@gmail.com","K123/45 L?? L???i, H??? Ch?? Minh",1),
(8,"Nguy???n Th??? H??o","1999-04-08",0,965656433,0763212345,"haohao99@gmail.com","55 Nguy???n V??n Linh, Kon Tum",3),
(9,"Tr???n ?????i Danh","1994-07-01",1,432341235,0643343433,"danhhai99@gmail.com","24 L?? Th?????ng Ki???t, Qu???ng Ng??i",1),
(10,"Nguy???n T??m ?????c","1989-07-01",1,344343432,0987654321,"dactam@gmail.com","22 Ng?? Quy???n, ???? N???ng",2);
  
insert into kieu_thue(ma_kieu_thue,ten_kieu_thue)
values(1,"year"),
(2,"month"),
(3,"day"),
(4,"hour");

insert into loai_dich_vu(ma_loai_dich_vu,ten_loai_dich_vu)
 values(1,"Villa"),
(2,"House"),
(3,"Room");

insert into dich_vu(ma_dich_vu,ten_dich_vu,dien_tich,chi_phi_thue,so_nguoi_toi_da,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang,dich_vu_mien_phi_di_kem,ma_kieu_thue,ma_loai_dich_vu)
values(1,"Villa Beach Front",25000,1000000,10,"vip","C?? h??? b??i",500,4,null,3,1),
(2,"House Princess 01",14000,5000000,7,"vip","C?? th??m b???p n?????ng",null,3,null,2,2),
(3,"Room Twin 01",5000,1000000,2,"normal","C?? tivi",null,null,"1 Xe m??y,1,Xe ?????p",4,3),
(4,"Villa No Beach Front",22000,9000000,8,"normal","C?? h??? b??i",300,3,null,3,1),
(5,"House Princess 02",10000,4000000,5,"normal","C?? th??m b???p n?????ng",null,2,null,3,2),
(6,"Room Twin 02",3000,900000,2,"normal","C?? tivi",null,null,"1 Xe m??y",4,3);

insert into dich_vu_di_kem(ma_dich_vu_di_kem,ten_dich_vu_di_kem,gia,don_vi,trang_thai)
values(1,"Karaoke",10000,"gi???","ti???n nghi,hi???n t???i"),
(2,"Thu?? xe m??y",10000,"chi???c","h???ng 1 xe"),
(3,"Thu?? xe ?????p",20000,"chi???c","t???t"),
(4,"Buffet bu???i s??ng",15000,"su???t","?????y ????? ????? ??n,tr??ng mi???ng"),
(5,"Buffet bu???i tr??a",90000,"su???t","?????y ????? ????? ??n,tr??ng mi???ng"),
(6,"Buffet bu???i t???i",16000,"su???t","?????y ????? ????? ??n,tr??ng mi???ng");

insert into hop_dong(ma_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu)
values(1,"2020-12-08","2020-12-08",0,3,1,3),
(2,"2020-07-14","2020-07-21",200000,7,3,1),
(3,"2021-03-15","2021-03-17",50000,3,4,2),
(4,"2021-01-14","2021-01-18",100000,7,5,5),
(5,"2021-07-14","2021-07-15",0,7,2,6),
(6,"2021-06-01","2021-06-03",0,7,7,6),
(7,"2021-09-02","2021-09-05",100000,7,4,4),
(8,"2021-06-17","2021-06-18",150000,3,4,1),
(9,"2020-11-19","2020-11-19",0,3,4,3),
(10,"2021-04-12","2021-04-14",0,10,3,5),
(11,"2021-04-25","2021-04-25",0,2,2,1),
(12,"2021-05-25","2021-05-27",0,7,10,1);

insert into hop_dong_chi_tiet(ma_hop_dong_chi_tiet,so_luong,ma_hop_dong,ma_dich_vu_di_kem)
values(1,5,2,4),
(2,8,2,5),
(3,15,2,6),
(4,1,3,1),
(5,11,3,2),
(6,1,1,3),
(7,2,1,2),
(8,2,12,2);

-- 2. Hi???n th??? th??ng tin c???a t???t c??? nh??n vi??n c?? trong h??? th???ng c?? t??n b???t ?????u l??
-- m???t trong c??c k?? t??? ???H???, ???T??? ho???c ???K??? v?? c?? t???i ??a 15 k?? t???.
-- c1-- 
SELECT 
    *
FROM
    nhan_vien
WHERE
    ho_ten REGEXP '^[HKT]'
        AND CHAR_LENGTH(ho_ten) <= 15;
        
       -- c2--  
        SELECT 
    *
FROM
    nhan_vien
WHERE
    ho_ten LIKE '%H' OR ho_ten LIKE '%T'
        OR ho_ten LIKE '%K'
        AND CHAR_LENGTH(ho_ten) <= 15;
        
        -- 3. Hi???n th??? th??ng tin c???a t???t c??? kh??ch h??ng c?? ????? tu???i t??? 18 ?????n 50 tu???i v??
-- c?? ?????a ch??? ??? ??????? N???ng??? ho???c ???Qu???ng Tr??????.
SELECT 
    ma_khach_hang,
    ho_ten,
    ngay_sinh,
    TIMESTAMPDIFF(YEAR,
        ngay_sinh,
        CURDATE()) AS tuoi,
    dia_chi
FROM
    khach_hang
WHERE
    (TIMESTAMPDIFF(YEAR,
        ngay_sinh,
        CURDATE()) BETWEEN 18 AND 50)
        AND (dia_chi LIKE '%Qu???ng Tr???'
        OR dia_chi LIKE '%???? N???ng');

-- 4. ?????m xem t????ng ???ng v???i m???i kh??ch h??ng ???? t???ng ?????t ph??ng bao nhi??u
-- l???n. K???t qu??? hi???n th??? ???????c s???p x???p t??ng d???n theo s??? l???n ?????t ph??ng c???a
-- kh??ch h??ng. Ch??? ?????m nh???ng kh??ch h??ng n??o c?? T??n lo???i kh??ch h??ng l?? ???Diamond???.
SELECT 
    kh.ma_khach_hang,
    kh.ho_ten,
    lk.ten_loai_khach,
    COUNT(hd.ma_khach_hang) AS so_lan_dat_phong
FROM
    loai_khach lk
        JOIN
    khach_hang kh ON lk.ma_loai_khach = kh.ma_loai_khach
        JOIN
    hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
WHERE
    lk.ten_loai_khach = 'diamond'
GROUP BY hd.ma_khach_hang
ORDER BY so_lan_dat_phong;

-- 5. Hi???n th??? ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien (V???i
-- t???ng ti???n ???????c t??nh theo c??ng th???c nh?? sau: Chi Ph?? Thu?? + S??? L?????ng * Gi??, v???i S??? L?????ng v?? Gi?? l?? t??? b???ng dich_vu_di_kem,
-- hop_dong_chi_tiet) cho t???t c??? c??c kh??ch h??ng ???? t???ng ?????t ph??ng. (nh???ng kh??ch h??ng n??o ch??a t???ng ?????t ph??ng c??ng ph???i hi???n th??? ra).
SELECT 
    k.ma_khach_hang,
    k.ho_ten,
    lk.ten_loai_khach,
    hd.ma_hop_dong,
    dv.ten_dich_vu,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
    SUM((chi_phi_thue + IFNULL(hdct.so_luong * dvdk.gia, 0))) as tong_tien
FROM
    khach_hang k
        LEFT JOIN
    loai_khach lk ON k.ma_loai_khach = lk.ma_loai_khach
        LEFT JOIN
    hop_dong hd ON hd.ma_khach_hang = k.ma_khach_hang
        LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hd.ma_hop_dong
ORDER BY k.ma_khach_hang; 

 /*
6.	Hi???n th??? ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu c???a t???t c??? c??c lo???i d???ch v??? 
ch??a t???ng ???????c kh??ch h??ng th???c hi???n ?????t t??? qu?? 1 c???a n??m 2021 (Qu?? 1 l?? th??ng 1, 2, 3).*/
-- c1-- 
SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM
    dich_vu dv
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
        JOIN
    hop_dong hd ON hd.ma_dich_vu = dv.ma_dich_vu
WHERE
    dv.ma_dich_vu NOT IN (SELECT 
            dv.ma_dich_vu
        FROM
            dich_vu dv
                JOIN
            hop_dong hd ON hd.ma_dich_vu = dv.ma_dich_vu
        WHERE
            ((MONTH(hd.ngay_lam_hop_dong) BETWEEN 1 AND 3)
                AND YEAR(hd.ngay_lam_hop_dong) = '2021')
        GROUP BY dv.ten_dich_vu)
GROUP BY dv.ten_dich_vu
ORDER BY dv.dien_tich DESC;

-- c2-- 
SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM
    dich_vu dv
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
        JOIN
    hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu
WHERE
    dv.ma_dich_vu NOT IN (SELECT 
            hd.ma_dich_vu
        FROM
            hop_dong hd
        WHERE
            (hd.ngay_lam_hop_dong BETWEEN '2021-01-01' AND '2021-03-31')
                OR (hd.ngay_ket_thuc BETWEEN '2021-01-01' AND '2021-03-31'))
GROUP BY hd.ma_dich_vu;
/*7.	Hi???n th??? th??ng tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu c???a t???t c??? c??c lo???i d???ch 
v??? ???? t???ng ???????c kh??ch h??ng ?????t ph??ng trong n??m 2020 nh??ng ch??a t???ng ???????c kh??ch h??ng ?????t ph??ng trong n??m 2021.*/
SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.so_nguoi_toi_da,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM
    dich_vu dv
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
        JOIN
    hop_dong hd ON hd.ma_dich_vu = dv.ma_dich_vu
WHERE
    dv.ma_dich_vu NOT IN (SELECT 
            dv.ma_dich_vu
        FROM
            dich_vu dv
                JOIN
            hop_dong hd ON hd.ma_dich_vu = dv.ma_dich_vu
        WHERE
            (hd.ngay_lam_hop_dong) BETWEEN '2021-01-01' AND '2021-12-31'
        GROUP BY dv.ten_dich_vu)
        AND YEAR(hd.ngay_lam_hop_dong) = '2020'
GROUP BY dv.ten_dich_vu;

/*8.	Hi???n th??? th??ng tin ho_ten kh??ch h??ng c?? trong h??? th???ng, v???i y??u c???u ho_ten kh??ng tr??ng nhau.
H???c vi??n s??? d???ng theo 3 c??ch kh??c nhau ????? th???c hi???n y??u c???u tr??n.*/
-- c??ch1 

SELECT 
    ho_ten
FROM
    khach_hang
GROUP BY ho_ten;


/*cach2*/
SELECT DISTINCT
    ho_ten 
FROM
    khach_hang;

/*cach 3*/
SELECT 
    ho_ten
FROM
    khach_hang 
UNION SELECT 
    ho_ten
FROM
    khach_hang;

/*9.	Th???c hi???n th???ng k?? doanh thu theo th??ng, ngh??a l?? t????ng ???ng v???i m???i th??ng trong n??m
 2021 th?? s??? c?? bao nhi??u kh??ch h??ng th???c hi???n ?????t ph??ng.*/


-- c1

SELECT 
    (MONTH(hop_dong.ngay_lam_hop_dong)) AS thang,
    COUNT(hop_dong.ma_khach_hang) AS so_luong_khach
FROM
    hop_dong
WHERE
    (hop_dong.ngay_lam_hop_dong BETWEEN '2021-01-01 00:00:00' AND '2021-12-31  23:59:59')
GROUP BY thang
ORDER BY thang ASC
;

-- c2

SELECT 
    MONTH(hop_dong.ngay_lam_hop_dong) thang,
    COUNT(hop_dong.ngay_lam_hop_dong) so_luong_khach_hang
FROM
    hop_dong
WHERE
    YEAR(hop_dong.ngay_lam_hop_dong) = '2021'
GROUP BY MONTH(hop_dong.ngay_lam_hop_dong)
ORDER BY thang;

/*10.	Hi???n th??? th??ng tin t????ng ???ng v???i t???ng h???p ?????ng th?? ???? s??? d???ng bao nhi??u d???ch v??? ??i k??m. K???t qu??? hi???n th??? bao g???m ma_hop_dong, 
ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem (???????c t??nh d???a tr??n vi???c sum so_luong ??? dich_vu_di_kem).*/


-- c1

SELECT DISTINCT
    hd.ma_hop_dong,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
    hd.tien_dat_coc,
    CASE
        WHEN hdct.so_luong IS NULL THEN SUM(0)
        ELSE SUM(hdct.so_luong)
    END AS 'so_luong_dich_vu_di_kem'
FROM
    hop_dong hd
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hd.ma_hop_dong
ORDER BY hd.ma_hop_dong ASC;

-- c2

SELECT 
    hop_dong.ma_hop_dong,
    hop_dong.ngay_lam_hop_dong,
    hop_dong.ngay_ket_thuc,
    hop_dong.tien_dat_coc,
    SUM(IFNULL(hop_dong_chi_tiet.so_luong, 0)) so_luong_dich_vu_di_kem
FROM
    hop_dong
        LEFT JOIN
    hop_dong_chi_tiet ON hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
GROUP BY hop_dong.ma_hop_dong;

-- 11. Hi???n th??? th??ng tin c??c d???ch v??? ??i k??m ???? ???????c s??? d???ng b???i nh???ng kh??ch
-- h??ng c?? ten_loai_khach l?? ???Diamond??? v?? c?? dia_chi ??? ???Vinh??? ho???c
-- ???Qu???ng Ng??i???. -- 
SELECT 
    *
FROM
    dich_vu_di_kem dvdk
        JOIN
    hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
        JOIN
    hop_dong hd ON hdct.ma_hop_dong = hd.ma_hop_dong
        JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
WHERE
    lk.ten_loai_khach = 'Diamond'
        AND (kh.dia_chi LIKE '%Vinh'
        OR kh.dia_chi LIKE '%Qu???ng Ng??i');
        
-- 12. Hi???n th??? th??ng tin ma_hop_dong, ho_ten (nh??n vi??n), ho_ten (kh??ch
-- h??ng), so_dien_thoai (kh??ch h??ng), ten_dich_vu,
-- so_luong_dich_vu_di_kem (???????c t??nh d???a tr??n vi???c sum so_luong ???
-- dich_vu_di_kem), tien_dat_coc c???a t???t c??? c??c d???ch v??? ???? t???ng ???????c
-- kh??ch h??ng ?????t v??o 3 th??ng cu???i n??m 2020 
-- nh??ng ch??a t???ng ???????c kh??ch h??ng ?????t v??o 6 th??ng ?????u n??m 2021

SELECT 
    hd.ma_hop_dong,
    nv.ho_ten,
    kh.ho_ten,
    kh.so_dien_thoai,
    dv.ma_dich_vu,
    dv.ten_dich_vu,
   SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem,
   hd.tien_dat_coc
FROM
    dich_vu_di_kem dvdk
        JOIN
    hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
      right  JOIN
    hop_dong hd ON hdct.ma_hop_dong = hd.ma_hop_dong
        JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        JOIN
    nhan_vien nv ON hd.ma_nhan_vien = nv.ma_nhan_vien
        JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
WHERE
    YEAR(hd.ngay_lam_hop_dong) = '2020'
        AND QUARTER(hd.ngay_lam_hop_dong) = '4'
        and  hd.ma_hop_dong
        not in 
        (
        SELECT 
    hd.ma_hop_dong
    FROM
    hop_dong hd
      where YEAR(hd.ngay_lam_hop_dong) = '2021'
        AND QUARTER(hd.ngay_lam_hop_dong) = '1'
      or QUARTER(hd.ngay_lam_hop_dong) = '2'
            group by hd.ma_hop_dong
        )
        group by hd.ma_hop_dong;
        
        -- 13. Hi???n th??? th??ng tin c??c D???ch v??? ??i k??m ???????c s??? d???ng nhi???u nh???t b???i c??c Kh??ch h??ng ???? ?????t ph??ng. 
-- (L??u ?? l?? c?? th??? c?? nhi???u d???ch v??? c?? s??? l???n s??? d???ng nhi???u nh?? nhau).
SELECT 
    dvdk.ma_dich_vu_di_kem,
    ten_dich_vu_di_kem,
    SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem
FROM
    dich_vu_di_kem dvdk
        JOIN
    hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
GROUP BY dvdk.ma_dich_vu_di_kem
HAVING so_luong_dich_vu_di_kem = (SELECT 
        SUM(so_luong)
    FROM
        hop_dong_chi_tiet
    GROUP BY ma_dich_vu_di_kem
    ORDER BY SUM(so_luong) DESC
    LIMIT 1);

-- 14. Hi???n th??? th??ng tin t???t c??? c??c D???ch v??? ??i k??m ch??? m???i ???????c s??? d???ng m???t l???n duy nh???t. Th??ng tin hi???n th??? bao g???m ma_hop_dong,
-- ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung (???????c t??nh d???a tr??n vi???c count c??c ma_dich_vu_di_kem).
SELECT 
    hd.ma_hop_dong,
    ten_loai_dich_vu,
    ten_dich_vu_di_kem,
    COUNT(so_luong) AS so_lan_su_dung
FROM
    loai_dich_vu ldv
        JOIN
    dich_vu dv ON ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
        JOIN
    hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu
        JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hdct.ma_dich_vu_di_kem
HAVING so_lan_su_dung = 1;

-- 15. Hi???n thi th??ng tin c???a t???t c??? nh??n vi??n bao g???m ma_nhan_vien, ho_ten, ten_trinh_do, ten_bo_phan,
-- so_dien_thoai, dia_chi m???i ch??? l???p ???????c t???i ??a 3 h???p ?????ng t??? n??m 2020 ?????n 2021.
SELECT 
    nv.ma_nhan_vien,
    ho_ten,
    ten_trinh_do,
    ten_bo_phan,
    so_dien_thoai,
    dia_chi
FROM
    trinh_do td
        JOIN
    nhan_vien nv ON td.ma_trinh_do = nv.ma_trinh_do
        JOIN
    bo_phan bp ON bp.ma_bo_phan = nv.ma_bo_phan
        JOIN
    hop_dong hd ON nv.ma_nhan_vien = hd.ma_nhan_vien
WHERE YEAR(ngay_lam_hop_dong) IN (2020, 2021)
GROUP BY hd.ma_nhan_vien
HAVING COUNT(hd.ma_nhan_vien) <= 3;
        
-- 	16.	X??a nh???ng Nh??n vi??n ch??a t???ng l???p ???????c h???p ?????ng n??o t??? n??m 2019 ?????n n??m 2021.-- 
set SQL_SAFE_UPDATES = 0;

delete from nhan_vien nv
where nv.ma_nhan_vien not in(select hd.ma_nhan_vien
from hop_dong hd 
where year(hd.ngay_lam_hop_dong) between 2019 and 2021);

set SQL_SAFE_UPDATES = 1;

-- 17.	C???p nh???t th??ng tin nh???ng kh??ch h??ng c?? ten_loai_khach t??? Platinum l??n Diamond, ch??? c???p nh???t nh???ng kh??ch h??ng ???? t???ng ?????t 
-- ph??ng v???i T???ng Ti???n thanh to??n trong n??m 2021 l?? l???n h??n 10.000.000 VN??.-- 
UPDATE khach_hang 
SET 
    ma_loai_khach = 1
WHERE
    ma_loai_khach = 2
        AND ma_khach_hang IN (SELECT 
            ma_khach_hang
        FROM
            (SELECT 
                kh.ma_khach_hang
            FROM
                khach_hang kh
            JOIN hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
            JOIN dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
            JOIN hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
            JOIN dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
            WHERE
                YEAR(hd.ngay_lam_hop_dong) = 2021
            GROUP BY hd.ma_hop_dong
            HAVING SUM(dv.chi_phi_thue + (hdct.so_luong * dvdk.gia)) > 1000000) AS tmp);
            
	-- 18.	X??a nh???ng kh??ch h??ng c?? h???p ?????ng tr?????c n??m 2021 (ch?? ?? r??ng bu???c gi???a c??c b???ng).-- 
    set SQL_SAFE_UPDATES = 0;
set foreign_key_checks =0;
DELETE FROM khach_hang 
WHERE
    ma_khach_hang IN (SELECT 
        ma_khach_hang
    FROM
        (SELECT 
            kh.ma_khach_hang
        FROM
            khach_hang kh
        JOIN hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
        
        WHERE
            YEAR(hd.ngay_lam_hop_dong) < 2021) AS tmp);
set foreign_key_checks =1;
set SQL_SAFE_UPDATES = 1;

-- 19.	C???p nh???t gi?? cho c??c d???ch v??? ??i k??m ???????c s??? d???ng tr??n 10 l???n trong n??m 2020 l??n g???p ????i.-- 
set SQL_SAFE_UPDATES = 0;
UPDATE dich_vu_di_kem 
SET 
    gia = gia * 2
WHERE
    ma_dich_vu_di_kem IN (SELECT 
            ma_dich_vu_di_kem
        FROM
            (SELECT 
                dvdk.ma_dich_vu_di_kem
            FROM
                hop_dong_chi_tiet hdct
            JOIN dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
            JOIN hop_dong hd ON hd.ma_hop_dong = hdct.ma_hop_dong
            WHERE
                hdct.so_luong > 10
                    AND YEAR(hd.ngay_lam_hop_dong) = 2020) AS tmp);
set SQL_SAFE_UPDATES = 1;

-- 20.	Hi???n th??? th??ng tin c???a t???t c??? c??c nh??n vi??n v?? kh??ch h??ng c?? trong h??? th???ng,
--  th??ng tin hi???n th??? bao g???m id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.-- 
select kh.ma_khach_hang as id,kh.ho_ten,kh.email,kh.so_dien_thoai,kh.ngay_sinh,kh.dia_chi
from khach_hang kh
union all
select nv.ma_nhan_vien,nv.ho_ten,nv.email,nv.so_dien_thoai,nv.ngay_sinh,nv.dia_chi
from nhan_vien nv