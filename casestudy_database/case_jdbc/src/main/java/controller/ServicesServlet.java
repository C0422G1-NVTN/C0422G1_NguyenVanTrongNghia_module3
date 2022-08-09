package controller;

import model.Customer.Customer;
import model.Facility.Facility;
import model.Facility.RentType;
import model.Facility.ServiceType;
import repository.facility.impl.FacilityRepository;
import service.customer.impl.FuramaService;
import service.facility.FacilityService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ServicesServlet", value = "/furama")
public class ServicesServlet extends HttpServlet {
    FuramaService furamaService = new FuramaService();
    FacilityService facilityService = new FacilityService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "listFacility":
                showListFacility(request, response);
                break;
            case "listCustomer":
                showListCustomer(request, response);
                break;
            case "listEmployee":
                showListEmployee(request, response);
                break;
            case "listContract":
                showListContract(request, response);
                break;
            case "createFacility":
                showNewFacilityForm(request, response);
                break;
            case "showCreateCustomer":
                showNewCustomerForm(request, response);
                break;
            case "createEmployee":
                showNewEmployeeForm(request, response);
                break;
            case "createContract":
                showNewContractForm(request, response);
                break;
            case "showEditFacility":
                showEditFacilityForm(request, response);
                break;
            case "showEditCustomer":
                showEditCustomerForm(request, response);
                break;
            case "editEmployee":
                showEditEmployeeForm(request, response);
                break;
            case "editContract":
                showEditContractForm(request, response);
                break;
            default:
                showHome(request, response);
        }
    }

    private void showEditContractForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("contract/edit.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showNewContractForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("contract/create.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListContract(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("contract/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditEmployeeForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("employee/edit.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditCustomerForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer existingCustomer = furamaService.findCustomerById(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/edit.jsp");
        request.setAttribute("cus", existingCustomer);
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void showNewEmployeeForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("employee/create.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showNewCustomerForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher;
        requestDispatcher = request.getRequestDispatcher("customer/create.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListEmployee(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("employee/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = furamaService.displayAllCustomer();
        request.setAttribute("listCustomer", customerList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListFacility(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilityList = facilityService.findAllFacility();
        request.setAttribute("listFacility", facilityList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("facility/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showHome(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("facility/home.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditFacilityForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Facility facility = facilityService.findById(id);
        List<ServiceType> serviceTypes = facilityService.getServiceTypeList();
        List<RentType> rentTypes = facilityService.getRentalTypeList();
        request.setAttribute("facility1", facility);
        request.setAttribute("facilityType", serviceTypes);
        request.setAttribute("rentType", rentTypes);
        RequestDispatcher rq = request.getRequestDispatcher("facility/edit.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showNewFacilityForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("facility/add.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "createCustomer":
                addNewCustomer(request, response);
                break;
            case "editCustomer":
                editCustomer(request, response);
                break;
            case "deleteCustomer":
                deleteCustomer(request, response);
                break;
            case "create-Facility":
                addNewFacility(request, response);
                break;
            case "deleteFacility":
                deleteFacility(request, response);
                break;
            case "editFacility":
                editFacility(request,response);
        }
    }

    private void editFacility(HttpServletRequest request, HttpServletResponse response) {
        Facility facility;
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double deposit = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("max_people"));
        int typeId = Integer.parseInt(request.getParameter("rent_type_id"));
        int facilityType = Integer.parseInt(request.getParameter("facilityType"));
        String standardRoom = request.getParameter("standard_room");
        String description = request.getParameter("description_other_convenience");
        String poolArea1 = request.getParameter("pool_area");
        double poolArea;
        if (poolArea1.equals("")){
            poolArea = 0;
        }else {
            poolArea = Double.parseDouble(poolArea1);
        }
        String numberFloor1 = request.getParameter("number_of_floors");
        int numberFloor;
        if (numberFloor1.equals("")){
            numberFloor = 0;
        }else {
            numberFloor = Integer.parseInt(numberFloor1);
        }
        String free = request.getParameter("facility_free");
        facility = new Facility(id, name, area, deposit, maxPeople, typeId, facilityType, standardRoom, description, poolArea, numberFloor,free);
        facilityService.editFacility(facility, id);
        List<Facility> facilityList = facilityService.findAllFacility();
        request.setAttribute("listFacility", facilityList);
        RequestDispatcher rq = request.getRequestDispatcher("facility/list.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteFacility(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        facilityService.deleteFacility(id);
        List<Facility> facilityList = facilityService.findAllFacility();
        request.setAttribute("listFacility", facilityList);
        showListFacility(request, response);
    }

    private void addNewFacility(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double deposit = Double.parseDouble(request.getParameter("deposit"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        int rentTypeId = Integer.parseInt(request.getParameter("rentTypeId"));
        int facilityType = Integer.parseInt(request.getParameter("facilityType"));
        String standardRoom = request.getParameter("standard_room");
        String description = request.getParameter("description_other_convenience");
        String poolArea1 = request.getParameter("pool_area");
        double poolArea;
        if (poolArea1.equals("")) {
            poolArea = 0;
        } else {
            poolArea = Double.parseDouble(poolArea1);
        }
        String numberFloor1 = request.getParameter("number_floor");
        int numberFloor;
        if (numberFloor1.equals("")) {
            numberFloor = 0;
        } else {
            numberFloor = Integer.parseInt(numberFloor1);
        }
        String facilityFree = request.getParameter("facility_free");
        Facility facility = new Facility(id, name, area, deposit, maxPeople, rentTypeId, facilityType, standardRoom, description, poolArea, numberFloor, facilityFree);
         = facilityService.createFacility(facility);
        if () {
            request.setAttribute("message", "insert success");
        } else {
            request.setAttribute("message", "insert error");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("facility/add.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        furamaService.deleteCustomerById(id);
        List<Customer> customerList = furamaService.displayAllCustomer();
        request.setAttribute("customer", customerList);
        showListCustomer(request, response);
    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        int typeCustomerId = Integer.parseInt(request.getParameter("typeCustomerId"));
        String name = request.getParameter("name");
        String dateOfBirth = request.getParameter("dateOfBirth");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(id, typeCustomerId, name, dateOfBirth, gender, idCard, phoneNumber, email, address);
        boolean flag = furamaService.editCustomerById(id, customer);

        if (flag) {
            request.setAttribute("message", "edit success");
        } else {
            request.setAttribute("message", "edit error");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/edit.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addNewCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        int typeCustomerId = Integer.parseInt(request.getParameter("typeCustomerId"));
        String name = request.getParameter("name");
        String dateOfBirth = request.getParameter("dateOfBirth");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(id, typeCustomerId, name, dateOfBirth, gender, idCard, phoneNumber, email, address);
        Map<String, String> mapError = furamaService.addCustomer(customer);
        RequestDispatcher dispatcher;
        if (mapError.size()>0) {
            request.setAttribute("message", mapError);
            dispatcher = request.getRequestDispatcher("customer/create.jsp");
        } else {
            request.setAttribute("success", "create  success");
            request.setAttribute("customer", furamaService.displayAllCustomer());
            dispatcher = request.getRequestDispatcher("customer/create.jsp");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
