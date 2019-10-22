package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.RedWine;
import com.igeek.service.imp.RedWineServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/page")
public class PageServlet extends BaseServlet {
    RedWineServiceImpl rws=new RedWineServiceImpl();
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
