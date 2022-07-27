import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProductServlet", value = "/discount")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float price = Float.parseFloat(request.getParameter("ListPrice"));
        float percent = Float.parseFloat(request.getParameter("DiscountPercent"));
        double discountAmount = price * percent * 0.01;
        double discountPrice = price - discountAmount;
        RequestDispatcher dispatcher = request.getRequestDispatcher("DiscountServlet.jsp");
        request.setAttribute("discountAmount",discountAmount);
        request.setAttribute("discountPrice",discountPrice);
        dispatcher.forward(request,response);

    }
}
