package com.igeek.web;

import com.alibaba.druid.support.json.JSONUtils;
import com.google.gson.Gson;
import com.igeek.domain.RedWine;
import com.igeek.service.RedWineService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/page")
public class PageServlet extends BaseServlet {
    RedWineService rws=new RedWineService();
    public void getCurrentPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currentpage= Integer.parseInt(request.getParameter("currentPage"));
        List<RedWine> redWines=rws.getCurrentPage(currentpage);
        //System.out.println("redWines:"+redWines);
        Gson gson=new Gson();
        String s = gson.toJson(redWines);
        System.out.println("s"+s);
        response.getWriter().write(s);
    }

}
