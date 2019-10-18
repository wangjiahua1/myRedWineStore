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
        List<Collect> collects = findAllCid(request,response);
        System.out.println(collects);
        List<MyCollect> lists = new LinkedList<>();
        for (int i = 0; i < collects.size(); i++) {
            MyCollect my = new MyCollect();
            my.setCollectid(collects.get(i).getCollectid());
            my.setNumber(collects.get(i).getNumber());
            Product product = findProductByPid(collects.get(i).getPid());
            my.setProduct(product);
            my.setTotal((int) (collects.get(i).getNumber() * product.getPrice()));
            lists.add(my);
        }
        request.setAttribute("collects",lists);
        request.getRequestDispatcher("my-wishlist.jsp").forward(request,response);
    }

    private Product findProductByPid(int pid) {
        return service.findProductByPid(pid);
    }


    public List<Collect> findAllCid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Collect> collects = service.findAllCid();
        return collects;
    }
}
