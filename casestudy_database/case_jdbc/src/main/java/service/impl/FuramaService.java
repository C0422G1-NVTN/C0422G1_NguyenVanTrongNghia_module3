package service.impl;

import model.Customer.Customer;
import repository.IFuramaRepository;
import repository.impl.FuramaRepository;
import service.IFuramaService;

import java.util.List;

public class FuramaService implements IFuramaService {
    FuramaRepository furamaRepository = new FuramaRepository();

    @Override
    public List<Customer> displayAllCustomer() {
        return furamaRepository.displayAllCustomer();
    }

    @Override
    public Customer findCustomerById(int id) {
        return furamaRepository.findCustomerById(id);
    }

    @Override
    public boolean addCustomer(Customer customer) {
        return furamaRepository.addCustomer(customer);
    }

    @Override
    public boolean deleteCustomerById(int id) {
        return furamaRepository.deleteCustomerById(id);
    }

    @Override
    public boolean editCustomerById(int id,Customer customer) {
        return furamaRepository.editCustomerById(id,customer);
    }
}
