package repository.impl;

import databaseconnect.DatabaseConnect;
import model.BaiHoc;
import repository.IBaiHocReposolity;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BaiHocRepository implements IBaiHocReposolity {
    private static final String SELECT_ALL_BAI_HOC_SP = "call find_all_bai_hoc();";
    private static final String DELETE_BAI_HOC_BY_ID_SP = "call delete_bai_hoc_by_id(?);";

    @Override
    public List<BaiHoc> displayBaiHoc() {
        List<BaiHoc> baiHocList = new ArrayList<>();
        Connection connection = DatabaseConnect.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(SELECT_ALL_BAI_HOC_SP);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                int idBaiHoc = resultSet.getInt("id_bai_hoc");
                String tieuDe = resultSet.getString("tieu_de");
                String loaiBaiHoc = resultSet.getString("loai_bai_hoc");
                String maModule = resultSet.getString("ma_module");
                String doKho = resultSet.getString("do_kho");
                String linkBaiHoc = resultSet.getString("link_bai_hoc");
                String tenModule = resultSet.getString("ten_module");
                baiHocList.add(new BaiHoc(idBaiHoc,tieuDe,loaiBaiHoc,maModule,doKho,linkBaiHoc,tenModule));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return baiHocList;
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
        Connection connection = DatabaseConnect.getConnectDB();
        int check;
        try {
            CallableStatement callableStatement = connection.prepareCall(DELETE_BAI_HOC_BY_ID_SP);
            callableStatement.setInt(1, id);
            check = callableStatement.executeUpdate();
            return check > 0 ? true : false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
