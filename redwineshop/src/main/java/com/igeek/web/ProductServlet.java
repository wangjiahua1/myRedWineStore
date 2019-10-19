package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.Cart;
import com.google.gson.Gson;
import com.igeek.domain.Product;
import com.igeek.domain.User;
import com.igeek.service.ProductService;
import com.igeek.utils.BeanFactory;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
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

    public void addcart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("i am coming");
       User user= (User) request.getSession().getAttribute("user");
        if(user!=null&&user.getUid()!=null&&!user.getUid().equals("")){
//            System.out.println(request.getParameter("pid"));
            Product product= ps.getcart(request.getParameter("pid"));
            Cart cart=new Cart();
            cart.setPid(product.getPid());
            cart.setPimage(product.getPimage());
            cart.setPname(product.getPname());
            cart.setUid(user.getUid());
            cart.setQuantity(1);
            cart.setPrice(product.getPrice());
            cart.setTotal(cart.getQuantity());
            ps.addcart(cart);
//            System.out.println("cart:"+cart);
            /*查找出所有购物车关于此用户的信息*/

           List<Cart> carts= ps.findallcart(user.getUid());
//            System.out.println(carts);
            request.setAttribute("carts",carts);
            request.getRequestDispatcher("shopping-cart-fullwidth.jsp").forward(request,response);
        }
        else {
            response.getWriter().write("You're not signed in. Get out of here+<br>你没有登录，滚蛋");
        }

    }

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

    public void getChooseColor (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String color=req.getParameter("color");
        List<Product> colorRedWine=ps.getChooseColor(color);
        Gson gson=new Gson();
        String s1 = gson.toJson(colorRedWine);
        resp.getWriter().write(s1);
    }


    public void getRedWineById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("id"));
        Product redwine=ps.getRedWineById(id);
        req.setAttribute("RedWine",redwine);
        req.getRequestDispatcher("productdetails-fullwidth.jsp").forward(req,resp);
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
