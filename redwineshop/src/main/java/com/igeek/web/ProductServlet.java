package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.Cart;
import com.google.gson.Gson;
import com.igeek.domain.CartTotal;
import com.igeek.domain.Product;
import com.igeek.domain.User;
import com.igeek.service.ProductService;
import com.igeek.utils.BeanFactory;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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

    //将心愿单中的商品添加到购物车
    public void updateCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MyCollect> collects= (List<MyCollect>) request.getSession().getAttribute("collects");
        for(MyCollect collect:collects){
//            System.out.println(collect);
            User user= (User) request.getSession().getAttribute("user");
            if(user!=null&&user.getUid()!=null&&!user.getUid().equals("")){
                int quantity=collect.getNumber();
                System.out.println("cart quantity="+quantity);
                Product product= collect.getProduct();
                System.out.println(product);
                Cart cart=new Cart();
                cart.setPid(product.getPid());
                cart.setPimage(product.getPimage());
                cart.setPname(product.getPname());
                cart.setUid(user.getUid());
                int quantitysql=ps.getcartid(user.getUid(),product.getPid());
                System.out.println("cart quantitysql="+quantitysql);
                quantity+=quantitysql;
                System.out.println("cart quantitysql+quantity="+quantity);
                cart.setQuantity(quantity);
                cart.setPrice(product.getPrice());
                cart.setTotal(1);
                System.out.println("cart total"+cart.getTotal());
                if(quantitysql==0){
                    ps.addcart(cart);
                }
                else {
                    ps.addcartpast(cart);
                }
                System.out.println("cart:"+cart);

            /*查找出所有购物车关于此用户的信息*/

                List<Cart> carts= ps.findallcart(user.getUid());
                System.out.println(carts);
                CartTotal cartTotal=new CartTotal();
                cartTotal.setCarts(carts);
                cartTotal.setAlltotal(0.0);
                request.setAttribute("cartTotal",cartTotal);
//                request.getRequestDispatcher("shopping-cart-fullwidth.jsp").forward(request,response);
                Gson gson=new Gson();
                String msg="success";
                String gsonStr=gson.toJson(msg);
                response.getWriter().write(gsonStr);
            }
            else {
                response.getWriter().write("You're not signed in. Get out of here+<br>你没有登录，滚蛋");
            }
        }
    }

    public void deletecart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().write("删除不想做，就懒");
    }
    public void findcartproduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("uid")!=null&&!request.getParameter("uid").equals("")) {
            List<Cart> carts = ps.findallcart(request.getParameter("uid"));
            System.out.println("you look look");
            System.out.println(carts);
            CartTotal cartTotal = new CartTotal();
            cartTotal.setCarts(carts);
            cartTotal.setAlltotal(0.0);
            request.setAttribute("cartTotal", cartTotal);
            HttpSession httpSession=request.getSession();
            httpSession.setAttribute("uid", request.getParameter("uid"));
            request.setAttribute("uid", request.getParameter("uid"));
            request.getRequestDispatcher("shopping-cart-fullwidth.jsp").forward(request,response);
        }
        else {
            response.getWriter().write("You're not signed in. Get out of here+<br>你没有登录，滚蛋");
        }
    }
    public void addcart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("i am coming");
       User user= (User) request.getSession().getAttribute("user");
        if(user!=null&&user.getUid()!=null&&!user.getUid().equals("")){
//            System.out.println(request.getParameter("pid"));
            System.out.println(request.getParameter("pid"));
            int quantity=Integer.parseInt(request.getParameter("quantity"));
            System.out.println("cart quantity="+quantity);
            Product product= ps.getcart(request.getParameter("pid"));
            Cart cart=new Cart();
            cart.setPid(product.getPid());
            cart.setPimage(product.getPimage());
            cart.setPname(product.getPname());
            cart.setUid(user.getUid());
            int quantitysql=ps.getcartid(user.getUid(),product.getPid());
            System.out.println("cart quantitysql="+quantitysql);
            quantity+=quantitysql;
            System.out.println("cart quantitysql+quantity="+quantity);
            cart.setQuantity(quantity);
            cart.setPrice(product.getPrice());
            cart.setTotal(1);
            System.out.println("cart total"+cart.getTotal());
            if(quantitysql==0){
                ps.addcart(cart);
            }
            else {
                ps.addcartpast(cart);
            }
            System.out.println("cart:"+cart);

            /*查找出所有购物车关于此用户的信息*/

           List<Cart> carts= ps.findallcart(user.getUid());
            System.out.println(carts);
            CartTotal cartTotal=new CartTotal();
            cartTotal.setCarts(carts);
            cartTotal.setAlltotal(0.0);
            request.setAttribute("cartTotal",cartTotal);
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


    /*public void getChoosePrice(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
    }*/
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
        req.setAttribute("product",redwine);
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
        System.out.println("4444..."+pid);
        Product product =ps.findbyPidproduct(pid);
        //System.out.println(product);
        request.setAttribute("product",product);
        request.getSession().setAttribute("pid",pid);
        request.getRequestDispatcher("productdetails-fullwidth.jsp").forward(request,response);
    }


    public void findcproduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products=ps.fincproduct();
        System.out.println(products);
        Gson gson =new Gson();
        String jsonString =gson.toJson(products);
        response.getWriter().write(jsonString);
    }


    public void findproductbycolor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String color=request.getParameter("color");
        String page=request.getParameter("page");
        System.out.println(color);
        List<Product> products =ps.findproductbycolor(color);
        System.out.println(products);
        Gson gson =new Gson();
        String jsonString =gson.toJson(products);
        response.getWriter().write(jsonString);
    }
}
