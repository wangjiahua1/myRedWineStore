package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.Product;
import com.igeek.service.ProductService;
import com.igeek.utils.BeanFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/page")
public class PageServlet extends BaseServlet {
    ProductService ps=(ProductService)BeanFactory.getBean("myredwineservice");
    public void getCurrentPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currentpage= Integer.parseInt(request.getParameter("currentPage"));
        List<Product> RedWines=ps.getCurrentPage(currentpage);
        //System.out.println("redWines:"+redWines);
        request.setAttribute("allredwine",RedWines);
        request.setAttribute("currentPage",currentpage);
        request.getRequestDispatcher("shopgridleft.jsp").forward(request,response);
    }

}
