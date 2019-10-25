package com.igeek.web;

import com.igeek.domain.Letter;
import com.igeek.service.LettersService;
import com.igeek.untilts.BeanFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/letters")
public class LettersServlet extends BaseServlet {
    LettersService service = (LettersService) BeanFactory.getBean("lettersService");
    public void findALLletters(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //调用service查询所有letters信息
        List<Letter> letters =service.findALLletters();
        //将信息放入session域中
        request.getSession().setAttribute("letters",letters);
        request.getRequestDispatcher("page/news/selectLetters.jsp").forward(request,response);
    }


    public void changeLetterState(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取页面eid的数据
        System.out.println("aaaaaaaa");
        int eid = Integer.parseInt(request.getParameter("eid"));
        //调用service修改来信的状态值，从而判断是否回复
        service.changeLetterState(eid);

        request.getRequestDispatcher("letters?method=findALLletters").forward(request,response);
    }

    public void deleteLetter(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取页面eid的数据
        int eid = Integer.parseInt(request.getParameter("eid"));
        //调用service删除数据
        service.deleteLetter(eid);

        request.getRequestDispatcher("letters?method=findALLletters").forward(request,response);
    }
    public void findContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取页面eid的数据
        int eid = Integer.parseInt(request.getParameter("eid"));
        //调用service查询内容数据
        Letter le =service.findContent(eid);
        request.setAttribute("lett",le);

        request.getRequestDispatcher("page/news/LetterContent.jsp").forward(request,response);
    }

}
