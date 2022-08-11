package service;

import model.BaiHoc;

import java.util.List;

public interface IBaiHocService {
    List<BaiHoc> displayBaiHoc();
    BaiHoc findBaiHocById(int id);
    void addBaiHoc(BaiHoc baiHoc);
    boolean deleteBaiHocById(int id);
}
