package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.Comment;
import com.igeek.service.CommentService;
import com.igeek.untilts.BeanFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by 卢翔 on 2019/10/22.
 */
@WebServlet("/commentServlet")
public class CommentServlet extends BaseServlet {
    CommentService service= (CommentService) BeanFactory.getBean("commentService");

    public void countCommentPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int count= service.countCommentPage();
//        int totalPage= (int) Math.ceil((double)count/10);
        System.out.println("count:"+count);
        request.getSession().setAttribute("count",count);
        String msg="\"success\"";
        Gson gson = new Gson();
        String s = gson.toJson(count);
        response.getWriter().write(s);
    }

    public void findCommentByPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String strPageNo=request.getParameter("pageNo");
        String strPageSize=request.getParameter("pageSize");
        int pageNo=Integer.parseInt(strPageNo);
        int pageSize=Integer.parseInt(strPageSize);
        System.out.println(pageNo+"--"+pageSize);

        List<Comment> comments=service.findCommentByPage(pageNo,pageSize);
        System.out.println(comments);
        Gson gson=new Gson();
        String gsonStr=gson.toJson(comments);
        response.getWriter().write(gsonStr);
    }

    public void findAllComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Comment> comments=service.findAllComment();
//        System.out.println(comments);
        Gson gson=new Gson();
        String gsonStr=gson.toJson(comments);
        response.getWriter().write(gsonStr);
    }

    public void delComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mmid=request.getParameter("mmid");
        String msg="";
        //从数据库中删除对应的评论
        try {
            service.delCommentByMMid(mmid);
            msg="\"del-success\"";
        } catch (Exception e) {
            msg="\"del-failed\"";
            e.printStackTrace();
        }
        //返回评论列表
//        response.sendRedirect(request.getContextPath()+"/page/links/comment.jsp");
        response.getWriter().write(msg);
    }
}
