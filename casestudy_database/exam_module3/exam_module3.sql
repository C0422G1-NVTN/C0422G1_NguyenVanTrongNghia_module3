drop database if exists exam_module3;
create database exam_module3;
use exam_module3;

create table khoa_hoc (
ma_khoa_hoc varchar(45) primary key,
ten_khoa_hoc varchar(45),
thoi_gian_hoc varchar(45),
hoc_phi int
);

create table module (
ma_module varchar(45) primary key,
ten_module varchar(45)
);

create table bai_hoc (
id_bai_hoc int primary key auto_increment,
tieu_de varchar(45),
loai_bai_hoc varchar(45),
ma_module varchar(45),
foreign key (ma_module) references exam_module3.module(ma_module),
do_kho varchar(45),
link_bai_hoc varchar(45)
);

create table nguoi_dung (
id_nguoi_dung int primary key auto_increment,
ho_va_ten varchar(45),
ngay_sinh date,
email varchar(45),
dia_chi varchar(45),
so_dien_thoai varchar(10),
cac_khoa_hoc_dang_hoc varchar(45)
);

insert into khoa_hoc(ma_khoa_hoc,ten_khoa_hoc,thoi_gian_hoc,hoc_phi)
values("JV_BC_2020","Java Bootscamp 2020","6 thang",45000000),
("JV_BC_2021","Java Bootscamp 2020","6 thang",45000000),
("JV_BC_2022","Java Bootscamp 2020","6 thang",45000000),
("JV_BC_2023","Java Bootscamp 2020","6 thang",45000000),
("JV_BC_2024","Java Bootscamp 2020","6 thang",45000000),
("JV_BC_2025","Java Bootscamp 2020","6 thang",45000000),
("JV_BC_2026","Java Bootscamp 2020","6 thang",45000000),
("JV_BC_2027","Java Bootscamp 2020","6 thang",45000000),
("JV_BC_2028","Java Bootscamp 2020","6 thang",45000000),
("JV_BC_2029","Java Bootscamp 2020","6 thang",45000000);

insert into module(ma_module,ten_module)
values("JAVA-WBDS","Web Back-end Developmet with Spring MVC"),
("CSS-WBDS","Web Back-end Developmet with Spring MVC"),
("HTML-WBDS","Web Back-end Developmet with Spring MVC"),
("JAVA-JS","Web Back-end Developmet with Spring MVC"),
("JAVA-HTML","Web Back-end Developmet with Spring MVC"),
("JAVA-ASDAS","Web Back-end Developmet with Spring MVC"),
("JAVA-ASDAC","Web Back-end Developmet with Spring MVC"),
("JAVA-ASA","Web Back-end Developmet with Spring MVC"),
("JAVA-WAAASBDS","Web Back-end Developmet with Spring MVC"),
("JAVA-DDWWC","Web Back-end Developmet with Spring MVC");

insert into bai_hoc(tieu_de,Loai_bai_hoc,ma_module,do_kho,link_bai_hoc)
values("cau dieu kien","bai giang","JAVA-WBDS","level 1","https://levunguyen.com"),
("cau dieu kien","bai giang","CSS-WBDS","level 1","https://levunguyen.com"),
("cau dieu kien","bai giang","HTML-WBDS","level 1","https://levunguyen.com"),
("cau dieu kien","bai giang","JAVA-JS","level 1","https://levunguyen.com"),
("cau dieu kien","bai giang","JAVA-HTML","level 1","https://levunguyen.com"),
("cau dieu kien","bai giang","JAVA-ASDAS","level 1","https://levunguyen.com"),
("cau dieu kien","bai giang","JAVA-ASA","level 1","https://levunguyen.com"),
("cau dieu kien","bai giang","JAVA-WAAASBDS","level 1","https://levunguyen.com"),
("cau dieu kien","bai giang","JAVA-WAAASBDS","level 1","https://levunguyen.com"),
("cau dieu kien","bai giang","JAVA-WAAASBDS","level 1","https://levunguyen.com");

insert into nguoi_dung(ho_va_ten,ngay_sinh,email,dia_chi,so_dien_thoai,cac_khoa_hoc_dang_hoc)
values("Nguyen Nghia","1998-11-20","email","dia_chi","0914303639","cac_khoa_hoc_dang_hoc"),
("Nguyen Nghia","1998-11-20","email","dia_chi","0914303639","cac_khoa_hoc_dang_hoc"),
("Nguyen Nghia","1998-11-20","email","dia_chi","0914303639","cac_khoa_hoc_dang_hoc"),
("Nguyen Nghia","1998-11-20","email","dia_chi","0914303639","cac_khoa_hoc_dang_hoc"),
("Nguyen Nghia","1998-11-20","email","dia_chi","0914303639","cac_khoa_hoc_dang_hoc"),
("Nguyen Nghia","1998-11-20","email","dia_chi","0914303639","cac_khoa_hoc_dang_hoc"),
("Nguyen Nghia","1998-11-20","email","dia_chi","0914303639","cac_khoa_hoc_dang_hoc"),
("Nguyen Nghia","1998-11-20","email","dia_chi","0914303639","cac_khoa_hoc_dang_hoc"),
("Nguyen Nghia","1998-11-20","email","dia_chi","0914303639","cac_khoa_hoc_dang_hoc"),
("Nguyen Nghia","1998-11-20","email","dia_chi","0914303639","cac_khoa_hoc_dang_hoc");