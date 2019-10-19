package com.igeek.web;

import com.igeek.domain.Collect;
import com.igeek.domain.MyCollect;
import com.igeek.domain.Product;
import com.igeek.service.CollectService;
import com.igeek.utils.BeanFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by LENOVO on 2019/10/18.
 */
@WebServlet("/collect")
public class CollectServlet extends BaseServlet {
    CollectService service = (CollectService) BeanFactory.getBean("collectservice");
    public void findAllCollect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Collect> collects = service.findAllCid();
        List<MyCollect> lists = new LinkedList<>();
        for (int i = 0; i < collects.size(); i++) {
            MyCollect my = new MyCollect();
            my.setCollectid(collects.get(i).getCollectid());
            Product product = service.findProductByPid(collects.get(i).getPid());
            my.setProduct(product);
            lists.add(my);
        }
        request.setAttribute("collects",lists);
        request.getRequestDispatcher("my-wishlist.jsp").forward(request,response);
    }

    public void findPartCollect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page = Integer.valueOf(request.getParameter("page"));
        List<Collect> collects = service.findPartCid(page);
        List<MyCollect> list = new LinkedList<>();
        for (int i = 0; i < collects.size(); i++) {
            MyCollect my = new MyCollect();
            Product product = service.findProductByPid(collects.get(i).getPid());
            my.setCollectid(collects.get(i).getCollectid());
            my.setProduct(product);
            list.add(my);
        }
        request.setAttribute("partCollect",list);
        request.getRequestDispatcher("compare.jsp").forward(request,response);
    }

    public void findCountCollect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int count = service.findCountCollect();
        count = (int) Math.ceil((double)count / 3);
        request.getSession().setAttribute("count",count);
        request.getRequestDispatcher("collect?method=findPartCollect&page=1").forward(request,response);
    }
}
