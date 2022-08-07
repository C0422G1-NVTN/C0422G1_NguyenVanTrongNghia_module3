package repository.customer.impl;

import DatabaseConnect.DatabaseConnect;
import model.Customer.Customer;
import repository.customer.IFuramaRepository;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FuramaRepository implements IFuramaRepository {
    private static final String SELECT_ALL_CUSTOMER_SP = "call find_all_customer();";
    private final String SELECT_CUSTOMER_BY_ID = "CALL find_customer_by_id(?);";
    private static final String CREATE_NEW_CUSTOMER_SP = "call insert_new_customer(?,?,?,?,?,?,?,?,?);";
    private static final String EDIT_CUSTOMER_SP = "call edit_customer(?,?,?,?,?,?,?,?,?);";
    private static final String DELETE_CUSTOMER_SP = "call delete_customer(?);";

    @Override
    public List<Customer> displayAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = DatabaseConnect.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(SELECT_ALL_CUSTOMER_SP);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_khach_hang");
                int typeCustomerId = resultSet.getInt("ma_loai_khach");
                String name = resultSet.getString("ho_ten");
                String dateOfBirth = resultSet.getString("ngay_sinh");
                int gender = resultSet.getInt("gioi_tinh");
                String idCard = resultSet.getString("so_cmnd");
                String phoneNumber = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                customerList.add(new Customer(id, typeCustomerId, name, dateOfBirth, gender, idCard, phoneNumber, email, address));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public Customer findCustomerById(int id) {
        Customer customer = null;
        Connection connection = DatabaseConnect.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(SELECT_CUSTOMER_BY_ID);
            callableStatement.setInt(1, id);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()){
                int typeId = resultSet.getInt("ma_loai_khach");
                String name = resultSet.getString("ho_ten");
                String date = resultSet.getString("ngay_sinh");
                int gender = resultSet.getInt("gioi_tinh");
                String idCard = resultSet.getString("so_cmnd");
                String phoneNumber = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                customer = new Customer(id, typeId, name, date, gender, idCard, phoneNumber, email, address);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;

    }

    @Override
    public boolean addCustomer(Customer customer) {
        Connection connection = DatabaseConnect.getConnectDB();
        int check;
        try {
            CallableStatement callableStatement = connection.prepareCall(CREATE_NEW_CUSTOMER_SP);
            callableStatement.setInt(1, customer.getId());
            callableStatement.setInt(2, customer.getTypeCustomerId());
            callableStatement.setString(3, customer.getName());
            callableStatement.setString(4, customer.getDateOfBirth());
            callableStatement.setInt(5, customer.getGender());
            callableStatement.setString(6, customer.getIdCard());
            callableStatement.setString(7, customer.getPhoneNumber());
            callableStatement.setString(8, customer.getEmail());
            callableStatement.setString(9, customer.getAddress());
            check = callableStatement.executeUpdate();
            return check > 0 ? true : false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteCustomerById(int id) {
        Connection connection = DatabaseConnect.getConnectDB();
        int check;
        try {
            CallableStatement callableStatement = connection.prepareCall(DELETE_CUSTOMER_SP);
            check = callableStatement.executeUpdate();
            return check > 0 ? true : false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean editCustomerById(int id, Customer customer) {
        Connection connection = DatabaseConnect.getConnectDB();
        int check;
        try {
            CallableStatement callableStatement = connection.prepareCall(EDIT_CUSTOMER_SP);
            callableStatement.setInt(1,customer.getId());
            callableStatement.setInt(2,customer.getTypeCustomerId());
            callableStatement.setString(3,customer.getName());
            callableStatement.setString(4,customer.getDateOfBirth());
            callableStatement.setInt(5,customer.getGender());
            callableStatement.setString(6,customer.getIdCard());
            callableStatement.setString(7,customer.getPhoneNumber());
            callableStatement.setString(8,customer.getEmail());
            callableStatement.setString(9,customer.getAddress());
            check = callableStatement.executeUpdate();
            return check>0?true:false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    }

