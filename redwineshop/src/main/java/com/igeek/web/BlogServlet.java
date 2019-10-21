package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.Blog;
import com.igeek.service.BlogService;
import com.igeek.utils.BeanFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/blog")
public class BlogServlet extends BaseServlet {
    BlogService bs = (BlogService) BeanFactory.getBean("blogservice");
    public void findblog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bid=request.getParameter("bid");
        Blog blogs =bs.findblog(bid);
        System.out.println(blogs);
        request.setAttribute("blogs",blogs);
        request.getRequestDispatcher("blogdetails-fullwidth.jsp").forward(request,response);
    }

}
