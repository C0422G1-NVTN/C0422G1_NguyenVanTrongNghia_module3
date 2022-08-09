package service.customer;

import model.Customer.Customer;

import java.util.List;
import java.util.Map;

public interface IFuramaService {
    List<Customer> displayAllCustomer();
    Customer findCustomerById(int id);
    Map<String,String> addCustomer(Customer customer);
    boolean deleteCustomerById(int id);
    boolean editCustomerById(int id,Customer customer);

}
