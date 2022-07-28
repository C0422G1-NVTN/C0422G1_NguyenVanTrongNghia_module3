package servlet;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomersServlet", value = "/CustomersServlet")
public class CustomersServlet extends HttpServlet {
    private List<Customer> customersList = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        customersList.add(new Customer("Mai Văn Hoàn", LocalDate.parse("1983-08-20"), "Hà Nội", "https://media.loveitopcdn.com/54/091609-thumb-15222092411420-ds-770.jpg"));
        customersList.add(new Customer("Nguyễn Văn Nam", LocalDate.parse("1983-08-21"), "Bắc Giang", "https://media.loveitopcdn.com/54/091609-thumb-15222092411420-ds-770.jpg"));
        customersList.add(new Customer("Nguyễn Thái Hòa", LocalDate.parse("1983-08-22"), "Nam Định", "https://media.loveitopcdn.com/54/091609-thumb-15222092411420-ds-770.jpg"));
        customersList.add(new Customer("Trần Đăng Khoa", LocalDate.parse("1983-08-17"), "Hà Tây", "https://media.loveitopcdn.com/54/091609-thumb-15222092411420-ds-770.jpg"));
        customersList.add(new Customer("Nguyễn Đình Thi", LocalDate.parse("1983-08-19"), "Hà Nội", "https://media.loveitopcdn.com/54/091609-thumb-15222092411420-ds-770.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/list.jsp");
        request.setAttribute("customersList", customersList);
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
