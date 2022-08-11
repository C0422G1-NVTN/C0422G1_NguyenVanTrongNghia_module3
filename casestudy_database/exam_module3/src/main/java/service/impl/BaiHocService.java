package service.impl;

import model.BaiHoc;
import repository.impl.BaiHocRepository;
import service.IBaiHocService;

import java.util.List;

public class BaiHocService implements IBaiHocService {
BaiHocRepository baiHocRepository = new BaiHocRepository();
    @Override
    public List<BaiHoc> displayBaiHoc() {
        return baiHocRepository.displayBaiHoc();
    }

    @Override
    public BaiHoc findBaiHocById(int id) {
        return null;
    }

    @Override
    public void addBaiHoc(BaiHoc baiHoc) {

    }

    @Override
    public boolean deleteBaiHocById(int id) {
        return baiHocRepository.deleteBaiHocById(id);
    }
}
