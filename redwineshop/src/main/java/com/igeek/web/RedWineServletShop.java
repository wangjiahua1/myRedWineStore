package com.igeek.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/search")
public class RedWineServletShop extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String message=req.getParameter("search_by_cat");
        req.getRequestDispatcher("page?method=getPageByCid&currentPage=1&search_by_cat="+message).forward(req,resp);
    }
}
