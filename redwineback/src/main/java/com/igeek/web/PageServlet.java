package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.Page;
import com.igeek.domain.RedWine;
import com.igeek.service.impl.RedWineServiceImpl;

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
        Page<RedWine> page=rws.getCurrentPage(currentpage);
        int maxPage= (int) Math.ceil(page.getTotalRecord()/10.0);
        String path="page?method=getCurrentPage&currentPage=";
        page.setPath(path);
        page.setPageNumber(currentpage);
        request.setAttribute("allredwine",page.getList());
        request.setAttribute("maxPage",maxPage);
        request.setAttribute("page",page);
        request.getRequestDispatcher("redwine.jsp").forward(request,response);

    }

}
