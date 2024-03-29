package repository.customer;

import model.Customer.Customer;

import java.util.List;

public interface IFuramaRepository {
    List<Customer> displayAllCustomer();
    Customer findCustomerById(int id);
    void addCustomer(Customer customer);
    boolean deleteCustomerById(int id);
    boolean editCustomerById(int id,Customer customer);
    List<Customer> searchCustomerByKeySearch(String keySearch);
}
