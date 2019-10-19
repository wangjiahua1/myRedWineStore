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
    public void findproduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cid=request.getParameter("cid");
        List<Product> products=ps.findproduct(cid);
        System.out.println("prodcut__"+products);
        Gson gson =new Gson();
        String jsonString =gson.toJson(products);
        response.getWriter().write(jsonString);
    }


    public void findproductbyIsnew(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products =ps.findproductbyIsnew("new");
        System.out.println(products);
        Gson gson =new Gson();
        String jsonString =gson.toJson(products);
        response.getWriter().write(jsonString);
    }

   public void findproductbyIshot(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products =ps.findproductbyIshot("");
       System.out.println(products);
       Gson gson =new Gson();
       String jsonString =gson.toJson(products);
       response.getWriter().write(jsonString);
    }


    public void findproductbyIsbhot(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products =ps.findproductbyIsbhot("hot");
        System.out.println(products);
        Gson gson =new Gson();
        String jsonString =gson.toJson(products);
        response.getWriter().write(jsonString);
    }


    public void findbyPidproduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pid=Integer.parseInt(request.getParameter("pid"));
        Product product =ps.findbyPidproduct(pid);
        //System.out.println(product);
        request.setAttribute("product",product);
        request.getRequestDispatcher("productdetails-fullwidth.jsp").forward(request,response);
    }
}
