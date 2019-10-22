package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.User;
import com.igeek.service.UserService;
import com.igeek.untilts.BeanFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

@WebServlet("/userb")
public class UserServlet extends BaseServlet {
    UserService us = (UserService) BeanFactory.getBean("userservice");
    public void login1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        System.out.println(username);
        String password=request.getParameter("password");
        System.out.println(password);
        User u = new User();
        User user =null;
        if (username.contains("@")){
            u.setEmail(username);
            u.setPassword(password);
            user=us.finduserbyEmail(u);
        }else{
            u.setUname(username);
            u.setPassword(password);
            user=us.finduserbyUname(u);
        }
        System.out.println(user);

        String msg="";
        if(user==null){
            msg="用户名或密码错误";
            request.setAttribute("msg",msg);
            response.sendRedirect(request.getContextPath()+"/login.jsp");
            return;
        }
        else {
            String[] rememberme=request.getParameterValues("rememberme");
            System.out.println(Arrays.toString(rememberme));
            if (rememberme!=null&&rememberme[0].equals("yes")){
                Cookie cookie=new Cookie("username",username);
                response.addCookie(cookie);
            }
        }
        Date lastlogin=new Date();
        System.out.println(lastlogin);
        user.setLastlogin(lastlogin);
        us.addlastlogin(lastlogin,user.getUid());
        HttpSession session=request.getSession();
        session.setAttribute("user",user);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    public void loginout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        session.removeAttribute("user");
        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }
}
