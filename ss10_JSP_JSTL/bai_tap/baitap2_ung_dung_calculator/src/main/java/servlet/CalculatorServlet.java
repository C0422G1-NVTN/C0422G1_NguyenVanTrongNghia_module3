package servlet;

import model.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = "/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
double firstNumber = Double.parseDouble(request.getParameter("firstNumber"));
double secondNumber = Double.parseDouble(request.getParameter("secondNumber"));
String operator = request.getParameter("operator");

String result = Calculator.calculator(firstNumber,secondNumber,operator);
RequestDispatcher requestDispatcher = request.getRequestDispatcher("/display.jsp");
request.setAttribute("firstNumber",firstNumber);
request.setAttribute("operator",operator);
request.setAttribute("secondNumber",secondNumber);
request.setAttribute("result",result);

requestDispatcher.forward(request,response);
    }
}
