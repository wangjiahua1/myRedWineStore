package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.Comment;
import com.igeek.domain.User;
import com.igeek.service.CommentService;
import com.igeek.utils.BeanFactory;
import org.bouncycastle.jcajce.provider.symmetric.ARC4;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;

@WebServlet("/comment")
public class CommentServlet extends BaseServlet {
    CommentService cs = (CommentService) BeanFactory.getBean("commentservice");
    public void addcomment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User u= (User) request.getSession().getAttribute("user");
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        int pid= (int) request.getSession().getAttribute("pid");
        System.out.println(email);
        String desc=request .getParameter("desc");
        String uid=u.getUid();
        Comment c =new Comment(name,email,desc,pid,uid);
        cs.addcomment(c);
        System.out.println(pid+"....789465");
        response.sendRedirect("product?method=findbyPidproduct&pid="+pid+"");
    }

    public void findcomment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pid= (int) request.getSession().getAttribute("pid");
        System.out.println(pid+"....456789");
        System.out.println("-------------------------------");
        List<Comment> comments =cs.findcomment(pid);
        Gson gson=new Gson();
        String jsonString =gson.toJson(comments);
        response.getWriter().write(jsonString);
    }
}
