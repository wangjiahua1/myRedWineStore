package com.igeek.web;

import com.igeek.domain.RedWine;
import com.igeek.service.imp.RedWineServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/redwine")
public class RedWineServlet extends BaseServlet {
    RedWineServiceImpl rws=new RedWineServiceImpl();
    public void getallredwine(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<RedWine> RedWines=rws.getallredwine();
        int maxPage = getMaxPage(request, response);
        request.setAttribute("allredwine",RedWines);
        request.setAttribute("maxPage",maxPage);
        request.getRequestDispatcher("redwine.jsp").forward(request,response);
    }
    public int getMaxPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int totalP=rws.getallredwineNum();
        int totalPage=totalP/10;
        if (totalP%10>0){
            totalPage+=1;
        }
        //request.setAttribute("totaPage",totalPage);
        //request.getRequestDispatcher("redwine.jsp").forward(request,response);
        return totalPage;
    }
}
