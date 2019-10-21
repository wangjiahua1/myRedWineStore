package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.Page;
import com.igeek.domain.Product;
import com.igeek.service.ProductService;
import com.igeek.utils.BeanFactory;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/page")
public class PageServlet extends BaseServlet {
    ProductService ps=(ProductService)BeanFactory.getBean("myredwineservice");
    Page newPage= (Page) BeanFactory.getBean("mypage");
    public void getCurrentPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currentpage= Integer.parseInt(request.getParameter("currentPage"));
        List<Product> RedWines=ps.getCurrentPage(currentpage);
        //System.out.println("redWines:"+redWines);
        request.setAttribute("allredwine",RedWines);
        request.setAttribute("currentPage",currentpage);
        request.getRequestDispatcher("shopgridleft.jsp").forward(request,response);
    }
//    public void getChoosePrice(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String price = req.getParameter("price");
//        String s[]=price.split("-");
//        for (int i = 0; i <s.length ; i++) {
//            s[i]=s[i].replace("$ ","");
//        }
//        int currentpage= Integer.parseInt(req.getParameter("currentpage"));
//        int price1= Integer.parseInt(s[0]);
//        int price2= Integer.parseInt(s[1]);
//        List<Product> RedWines=ps.getChoosePrice(price1,price2,currentpage);
//        System.out.println(RedWines);
//        Gson gson=new Gson();
//        String gsonS=gson.toJson(RedWines);
//        resp.getWriter().write(gsonS);
//    }

}
