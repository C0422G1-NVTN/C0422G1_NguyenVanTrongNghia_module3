drop database if exists baitap1_ss2;
create database baitap1_ss2;

use baitap1_ss2;

create table phieu_xuat(
so_px int primary key ,
ngay_xuat datetime
);

create table vat_tu(
ma_vtu int primary key ,
ten_vtu varchar(20)
);

create table phieu_nhap(
so_phieu_nhap int primary key,
ngay_nhap datetime
);

create table chi_tiet_phieu_xuat(
so_px int,
ma_vtu int,
don_gia_xuat int,
so_luong_xuat int,
primary key(so_px,ma_vtu),
foreign key(so_px) references phieu_xuat(so_px),
foreign key(ma_vtu) references vat_tu(ma_vtu)
);

create table chi_tiet_phieu_nhap(
don_gia_nhap int,
so_luong_nhap int,
so_phieu_nhap int,
ma_vtu int,
primary key(so_phieu_nhap,ma_vtu),
foreign key(so_phieu_nhap)references phieu_nhap(so_phieu_nhap),
foreign key(ma_vtu)references vat_tu(ma_vtu)
);

create table don_dat_hang(
so_dat_hang int primary key ,
ngay_dat_hang datetime,
ma_nha_cung_cap int,
foreign key(ma_nha_cung_cap)references nha_cung_cap(ma_nha_cung_cap)
);

create table chi_tiet_don_dat_hang(
so_dat_hang int,
ma_vtu int,
primary key(so_dat_hang,ma_vtu),
foreign key (so_dat_hang)references don_dat_hang(so_dat_hang),
foreign key (ma_vtu)references vat_tu(ma_vtu)
);

create table nha_cung_cap(
ma_nha_cung_cap int primary key,
ten_nha_cung_cap varchar(20),
dia_chi varchar(20),
sdt varchar(10)
);

create table so_dien_thoai(
ma_nha_cung_cap int,
sdt varchar(10) primary key,
foreign key (ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
);
