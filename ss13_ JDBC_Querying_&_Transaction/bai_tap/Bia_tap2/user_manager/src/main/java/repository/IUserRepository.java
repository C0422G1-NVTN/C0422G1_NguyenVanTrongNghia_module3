package repository;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserRepository {
     void insertUser(User user) throws SQLException;

     User selectUser(int id);

     List<User> selectAllUsers();

     boolean deleteUser(int id) throws SQLException;

     boolean updateUser(User user) throws SQLException;

    List<User> findByCountry(String country);

    List<User> sortByName();

    User getUserById(int id);

    void insertUserStore(User user) throws SQLException;

    void addUserTransaction(User user, int[] permission);

     void insertUpdateWithoutTransaction();

     void insertUpdateUseTransaction();

    //BAITAP1
     List<User> displayUserStore();

     void editUserStore(User user);

     void deleteUserStore(int id);
}
