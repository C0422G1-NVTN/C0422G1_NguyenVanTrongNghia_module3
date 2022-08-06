package service;

import model.Customer.Customer;

import java.util.List;

public interface IFuramaService {
    List<Customer> displayAllCustomer();
    Customer findCustomerById(int id);
    boolean addCustomer(Customer customer);
    boolean deleteCustomerById(int id);
    boolean editCustomerById(int id,Customer customer);

}
