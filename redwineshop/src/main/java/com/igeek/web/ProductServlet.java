package com.igeek.web;

import com.igeek.domain.Product;
import com.igeek.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author jerryHe
 * @create 2019-10-08 15:59
 */

@WebServlet("/product")
public class ProductServlet extends BaseServlet {
    ProductService ps=new ProductService();
    public void getAllRedWine(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int sizePage= Integer.parseInt(request.getParameter("sizePage"));
        List<Product> RedWines=ps.getallredwine(sizePage);
        System.out.println(RedWines);
        int maxPage = getMaxPage(request, response);
        request.setAttribute("allredwine",RedWines);
        request.setAttribute("maxPage",maxPage);
        request.getRequestDispatcher("shopgridleft.jsp").forward(request,response);
    }


    public int getMaxPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取每页个数及个图片每页
        int sizePage= Integer.parseInt(request.getParameter("sizePage"));
        //获取页面最大数值
        int maxPage=(int)Math.ceil(ps.getCountRedWine()/sizePage);
        System.out.println(maxPage);
        return maxPage;
    }
}
