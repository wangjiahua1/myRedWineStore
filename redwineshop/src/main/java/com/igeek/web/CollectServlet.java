package com.igeek.web;

import com.igeek.domain.Collect;
import com.igeek.domain.MyCollect;
import com.igeek.domain.Product;
import com.igeek.domain.User;
import com.igeek.service.CollectService;
import com.igeek.utils.BeanFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by LENOVO on 2019/10/18.
 */
@WebServlet("/collect")
public class CollectServlet extends BaseServlet {
    CollectService service = (CollectService) BeanFactory.getBean("collectservice");

    public void delAllCollect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //删除全部收藏
        User user= (User) request.getSession().getAttribute("user");
        String uid=user.getUid();
        service.delAllCollect(uid);
//        request.getRequestDispatcher("collect?method=findAllCollect").forward(request,response);
        response.getWriter().write("success");
    }

    public void deleCollect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String strPid=request.getParameter("pid");
        int pid=Integer.parseInt(strPid);
        //删除对应的商品
        service.deleCollectByPid(pid);
        //跳转显示心愿单的servlet
        request.getRequestDispatcher("collect?method=findAllCollect").forward(request,response);
    }

    public void addCollect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //判断是否登录
        User user= (User) request.getSession().getAttribute("user");
        if(user==null){
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }else {
            //获取pid
            String strpid= request.getParameter("pid");
            int pid=Integer.parseInt(strpid);
            //根据pid获取商品
            Product product=service.findProductByPid(pid);
//            System.out.println(product);
            //判断心愿单中是否有此商品
            List<Collect> collects=service.findCollectByUid(user.getUid());
            boolean flag=false;
            for (Collect collect:collects){
                if(collect.getPid()==pid)
                    flag=true;
            }
            if(!flag){
                //心愿单中没有此商品
                Collect collect=new Collect(pid,1,user.getUid());
                //加入购物车
                service.addCollect(collect);
            }
            response.getWriter().write("successful");
        }

    }

    public void findAllCollect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取当前登录的用户
        User user= (User) request.getSession().getAttribute("user");
//        System.out.println(user);

        List<Collect> collects = service.findCollectByUid(user.getUid());
        List<MyCollect> lists = new LinkedList<>();
        for (int i = 0; i < collects.size(); i++) {
            MyCollect my = new MyCollect();
            my.setCollectid(collects.get(i).getCollectid());
            my.setNumber(collects.get(i).getNumber());
            Product product = service.findProductByPid(collects.get(i).getPid());
            my.setProduct(product);
            my.setUid(user.getUid());
            lists.add(my);
        }
        request.getSession().setAttribute("collects",lists);
        request.getRequestDispatcher("my-wishlist.jsp").forward(request,response);
    }

    public void findPartCollect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page = Integer.valueOf(request.getParameter("page"));
        User user= (User) request.getSession().getAttribute("user");
        String uid = user.getUid();
        List<Collect> collects = service.findPartCid(page,uid);
        System.out.println("collect:"+collects);
        List<MyCollect> list = new LinkedList<>();
        for (int i = 0; i < collects.size(); i++) {
            MyCollect my = new MyCollect();
            Product product = service.findProductByPid(collects.get(i).getPid());
            my.setCollectid(collects.get(i).getCollectid());
            my.setProduct(product);
            list.add(my);
        }
        request.setAttribute("partCollect",list);
        System.out.println("list:"+list);
        request.setAttribute("page",page);
        request.getRequestDispatcher("compare.jsp").forward(request,response);
    }

    public void findCountCollect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user= (User) request.getSession().getAttribute("user");
        if (user == null){
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }else {
            String uid = user.getUid();
            int count = service.findCountCollect(uid);
            count = (int) Math.ceil((double) count / 3);
            request.getSession().setAttribute("count", count);
            request.getRequestDispatcher("collect?method=findPartCollect&page=1").forward(request, response);
        }
    }

    public void delCollect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        String uid = user.getUid();
        String pid = request.getParameter("pid");
        service.delCollect(uid,pid);
        request.getRequestDispatcher("collect?method=findPartCollect&page=1").forward(request, response);
    }
}
