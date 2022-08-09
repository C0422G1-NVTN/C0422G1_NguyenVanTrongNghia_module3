package service.customer.impl;

import model.Customer.Customer;
import repository.customer.impl.FuramaRepository;
import service.customer.IFuramaService;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FuramaService implements IFuramaService {
    private final String REGEX_NAME_CUSTOMER = "([A-Z][a-z]+\\s?)+";
    private final String REGEX_PHONE_NUMBER = "^(090|091|\\(84\\)\\+90|\\(84\\)\\+91)[0-9]{7}$";
    private final String REGEX_ID_CARD = "^[0-9]{9,12}$";
    private final String REGEX_EMAIL = "^[a-z]+[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
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
    public Map<String,String> addCustomer(Customer customer) {
        Map<String, String> mapErrors = new HashMap<>();

        if (!customer.getName().isEmpty()) {
            if (!customer.getName().matches(REGEX_NAME_CUSTOMER)) {
                mapErrors.put("name", "Please input right format!");
            }
        } else {
            mapErrors.put("name", "Please input name!");
        }

        if (!customer.getPhoneNumber().isEmpty()) {
            if (!customer.getPhoneNumber().matches(REGEX_PHONE_NUMBER)) {
                mapErrors.put("name", "Please input right format!");
            }
        } else {
            mapErrors.put("phoneNumber", "Please input phone number!");
        }

        if (!customer.getIdCard().isEmpty()) {
            if (!customer.getIdCard().matches(REGEX_ID_CARD)) {
                mapErrors.put("idCard", "Please input right format!");
            }
        } else {
            mapErrors.put("idCard", "Please input id card!");
        }

        if (!customer.getEmail().isEmpty()) {
            if (!customer.getEmail().matches(REGEX_EMAIL)) {
                mapErrors.put("email", "Please input right format!");
            }
        } else {
            mapErrors.put("email", "Please input email!");
        }
        LocalDate birthDay;
        if (!customer.getDateOfBirth().isEmpty()) {
            try {
                birthDay = LocalDate.parse(customer.getDateOfBirth());
            } catch (Exception e) {
                mapErrors.put("dateOfBirth", "Please input date format");
            }
        } else {
            mapErrors.put("dateOfBirth", "Please input date!");
        }

        if (mapErrors.size() == 0) {
            this.furamaRepository.addCustomer(customer);
        }
        return mapErrors;

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
