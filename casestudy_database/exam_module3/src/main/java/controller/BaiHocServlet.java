package controller;

import model.BaiHoc;
import service.impl.BaiHocService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BaiHocServlet", value = "/BaiHoc")
public class BaiHocServlet extends HttpServlet {
    BaiHocService baiHocService = new BaiHocService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {

            case "showAddBaiHoc":
                showAddCustomerForm(request, response);
                break;
            default:
                showListBaiHoc(request, response);
        }
    }

    private void showAddCustomerForm(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showEditCustomerForm(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showListBaiHoc(HttpServletRequest request, HttpServletResponse response) {
        List<BaiHoc> baiHocList = baiHocService.displayBaiHoc();
        request.setAttribute("listBaiHoc", baiHocList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/list.jsp");
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
            case "deleteBaiHoc":
                deleteBaiHoc(request, response);
                break;
        }
    }

    private void deleteBaiHoc(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        baiHocService.deleteBaiHocById(id);
        List<BaiHoc> baiHocList = baiHocService.displayBaiHoc();
        request.setAttribute("listBaiHoc", baiHocList);
        showListBaiHoc(request, response);
    }
}

