package repository.facility.impl;

import DatabaseConnect.DatabaseConnect;
import model.Facility.Facility;
import repository.facility.IFacilityRepository;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepository implements IFacilityRepository {
    private final String FIND_FACILITY = "CALL find_all_facility();";
    private final String ADD_FACILITY = "CALL insert_new_facility(?,?,?,?,?,?,?,?,?,?,?,?);";
    private final String DELETE_FACILITY = "CALL delete_facility(?);";
    @Override
    public boolean createFacility(Facility facility) {
        Connection connection = DatabaseConnect.getConnectDB();
        String standardRoom = facility.getStandardRoom();
        String description = facility.getDescription();
        int facilityType = facility.getFacilityType();
        double poolArea = facility.getPoolArea();
        int numberFloor = facility.getNumberFloor();
        String facilityFree = facility.getFacilityFree();
        if (facilityType == 1){
            facilityFree = null;
        }else if (facilityType == 2){
            poolArea = 0;
            facilityFree = null;
        }else {
            standardRoom = null;
            description = null;
            poolArea = 0;
            numberFloor = 0;
        }
        int check;
        try {
            CallableStatement callableStatement = connection.prepareCall(ADD_FACILITY);
            callableStatement.setInt(1, facility.getId());
            callableStatement.setString(2, facility.getName());
            callableStatement.setInt(3, facility.getArea());
            callableStatement.setDouble(4, facility.getDeposit());
            callableStatement.setInt(5, facility.getMaxPeople());
            callableStatement.setInt(6, facility.getRentTypeId());
            callableStatement.setInt(7, facility.getFacilityType());
            callableStatement.setString(8, standardRoom);
            callableStatement.setString(9, description);
            callableStatement.setDouble(10, poolArea);
            callableStatement.setInt(11, numberFloor);
            callableStatement.setString(12, facilityFree);
            check = callableStatement.executeUpdate();
            return check > 0 ? true : false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean editFacility(Facility facility, int id) {
        return false;
    }

    @Override
    public boolean deleteFacility(int id) {
        Connection connection = DatabaseConnect.getConnectDB();
        int check;
        try {
            CallableStatement callableStatement = connection.prepareCall(DELETE_FACILITY);
            callableStatement.setInt(1,id);
            check = callableStatement.executeUpdate();
            return check > 0 ? true : false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Facility> findAllFacility() {
        List<Facility> facilityList = new ArrayList<>();
        Facility facility;
        Connection connection = DatabaseConnect.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(FIND_FACILITY);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("ma_dich_vu");
                String name = resultSet.getString("ten_dich_vu");
                int area = resultSet.getInt("dien_tich");
                double deposit = resultSet.getDouble("chi_phi_thue");
                int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentType = resultSet.getInt("ma_kieu_thue");
                int facilityType = resultSet.getInt("ma_loai_dich_vu");
                String standardRoom = resultSet.getString("tieu_chuan_phong");
                String description = resultSet.getString("mo_ta_tien_nghi_khac");
                double poolArea = resultSet.getInt("dien_tich_ho_boi");
                int numberFloor = resultSet.getInt("so_tang");
                String facilityFree = resultSet.getString("dich_vu_mien_phi_di_kem");
                facility = new Facility(id, name, area, deposit, maxPeople, rentType, facilityType, standardRoom, description, poolArea, numberFloor, facilityFree);
                facilityList.add(facility);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityList;
    }

    @Override
    public List<Facility> findByName() {
        return null;
    }

    @Override
    public Facility findById(int id_search) {
        return null;
    }
}
