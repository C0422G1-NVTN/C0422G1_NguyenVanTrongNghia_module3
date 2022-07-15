drop database if exists baitap1_ss2;
create database baitap1_ss2;

use baitap1_ss2;

CREATE TABLE phieu_xuat (
    so_px INT PRIMARY KEY,
    ngay_xuat DATETIME
);

CREATE TABLE vat_tu (
    ma_vtu INT PRIMARY KEY,
    ten_vtu VARCHAR(20)
);

CREATE TABLE phieu_nhap (
    so_phieu_nhap INT PRIMARY KEY,
    ngay_nhap DATETIME
);

CREATE TABLE chi_tiet_phieu_xuat (
    so_px INT,
    ma_vtu INT,
    don_gia_xuat INT,
    so_luong_xuat INT,
    PRIMARY KEY (so_px , ma_vtu),
    FOREIGN KEY (so_px)
        REFERENCES phieu_xuat (so_px),
    FOREIGN KEY (ma_vtu)
        REFERENCES vat_tu (ma_vtu)
);

CREATE TABLE chi_tiet_phieu_nhap (
    don_gia_nhap INT,
    so_luong_nhap INT,
    so_phieu_nhap INT,
    ma_vtu INT,
    PRIMARY KEY (so_phieu_nhap , ma_vtu),
    FOREIGN KEY (so_phieu_nhap)
        REFERENCES phieu_nhap (so_phieu_nhap),
    FOREIGN KEY (ma_vtu)
        REFERENCES vat_tu (ma_vtu)
);

CREATE TABLE don_dat_hang (
    so_dat_hang INT PRIMARY KEY,
    ngay_dat_hang DATETIME,
    ma_nha_cung_cap INT,
    FOREIGN KEY (ma_nha_cung_cap)
        REFERENCES nha_cung_cap (ma_nha_cung_cap)
);

CREATE TABLE chi_tiet_don_dat_hang (
    so_dat_hang INT,
    ma_vtu INT,
    PRIMARY KEY (so_dat_hang , ma_vtu),
    FOREIGN KEY (so_dat_hang)
        REFERENCES don_dat_hang (so_dat_hang),
    FOREIGN KEY (ma_vtu)
        REFERENCES vat_tu (ma_vtu)
);

CREATE TABLE nha_cung_cap (
    ma_nha_cung_cap INT PRIMARY KEY,
    ten_nha_cung_cap VARCHAR(20),
    dia_chi VARCHAR(20),
    sdt VARCHAR(10)
);

CREATE TABLE so_dien_thoai (
    ma_nha_cung_cap INT,
    sdt VARCHAR(10) PRIMARY KEY,
    FOREIGN KEY (ma_nha_cung_cap)
        REFERENCES nha_cung_cap (ma_nha_cung_cap)
);
