package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.Product;
import com.igeek.service.ProductService;
import com.igeek.utils.BeanFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author jerryHe
 * @create 2019-10-08 15:59
 */

@WebServlet("/product")
public class ProductServlet extends BaseServlet {
    ProductService ps=(ProductService)BeanFactory.getBean("myredwineservice");
    public void getAllRedWine(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int sizePage= Integer.parseInt(request.getParameter("sizePage"));
        List<Product> RedWines=ps.getallredwine(sizePage);
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
        return maxPage;
    }


    public void gethotRedwine(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> hotwedwines=ps.gethotRedwine();
        Gson gson=new Gson();
        String t=gson.toJson(hotwedwines);
        resp.getWriter().write(t);
    }


    public void getChoosePrice(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String price = req.getParameter("price");
        String s[]=price.split("-");
        for (int i = 0; i <s.length ; i++) {
            s[i]=s[i].replace("$ ","");
        }
        int price1= Integer.parseInt(s[0]);
        int price2= Integer.parseInt(s[1]);
        List<Product> myredwine=ps.getChoosePrice(price1,price2);
        Gson gson=new Gson();
        String s1 = gson.toJson(myredwine);
        resp.getWriter().write(s1);
    }
    public void getChooseColor (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String color=req.getParameter("color");
        List<Product> colorRedWine=ps.getChooseColor(color);
        Gson gson=new Gson();
        String s1 = gson.toJson(colorRedWine);
        resp.getWriter().write(s1);
    }
}
