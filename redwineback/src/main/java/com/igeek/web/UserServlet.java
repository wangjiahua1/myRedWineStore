package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.User;
import com.igeek.service.UserService;
import com.igeek.untilts.BeanFactory;
import com.igeek.untilts.MD5Utils;
import com.igeek.untilts.Mailutils;
import sun.security.x509.AVA;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@WebServlet("/userb")
public class UserServlet extends BaseServlet {
    UserService us = (UserService) BeanFactory.getBean("userservice");
    //登录
    public void login1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        // System.out.println(username);
        String password=request.getParameter("password");
        //  System.out.println(password);
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
            request.getSession().setAttribute("msg",msg);
            response.sendRedirect(request.getContextPath()+"/login.jsp");
            return;
        }
        else {
            String[] rememberme=request.getParameterValues("rememberme");
            // System.out.println(Arrays.toString(rememberme));
            if (rememberme!=null&&rememberme[0].equals("yes")){
                Cookie cookie=new Cookie("username",username);
                response.addCookie(cookie);
            }

        }
        Date lastlogin=new Date();
        // System.out.println(lastlogin);
        user.setLastlogin(lastlogin);
        //System.out.println(user.getUid());
        us.addlastlogin(lastlogin,user.getUid());
        HttpSession session=request.getSession();
        session.setAttribute("user",user);
        request.getRequestDispatcher("index.jsp").forward(request,response);

    }
    //注销
    public void loginout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        session.removeAttribute("user");
        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }

    //注册
    public void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code=request.getParameter("code");
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        // System.out.println(email);
        User user=new User();
        User u =null;
        u=us.findcode(email);
        System.out.println(u);
        if (u.getStation().equals(code)){
            u.setPassword(password);
            us.register(u);
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }else{
            response.sendRedirect("register.jsp");
        }
    }

    //发验证码
    public void sendmail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email=request.getParameter("email");
        String activecode=request.getParameter("activecode");
        System.out.println(email+"---"+activecode);
        String uuid=UUID.randomUUID().toString();
        us.addcode(activecode,uuid,email);
        Mailutils.sendMail(email,"验证码",activecode);

    }

    //修改个人信息
    public void information(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("----------1-------------");
        String uname=request.getParameter("name");
        System.out.println(uname);
        String memberorder=request.getParameter("memberorder");
        String sex=request.getParameter("sex");
        String tel=request.getParameter("tel");
        String time=request.getParameter("birthday");
        System.out.println(time);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date birthday = null;
        try {
            birthday = sdf.parse(time);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String address=request.getParameter("address");
        System.out.println(address);
        User user=new User(uname,memberorder,sex,tel,birthday,address);
        User u = (User) request.getSession().getAttribute("user");
        us.information(user,u.getEmail());
        System.out.println(user+"45465");
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
    //修改密码
    public void amendpassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String oldpassword=request.getParameter("oldpassword");
        System.out.println(oldpassword);
        String oldpd=MD5Utils.enCode(oldpassword);
        System.out.println(oldpd);
        String newpassword=request.getParameter("newpassword");
        String commitpassword=request.getParameter("commitpassword");
        User user= (User) request.getSession().getAttribute("user");
        System.out.println(user.getUname());
        User u =us.findpassword(user.getUname());
        System.out.println(u+"11111");
        if (oldpd.equals(u.getPassword())){
            us.updatepassword(newpassword,u.getUname());
            response.sendRedirect("login.jsp");
        }
    }


    public void findalluser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> users=us.findalluser();
        System.out.println(users);
        Gson gson=new Gson();
        String s=gson.toJson(users);
        response.getWriter().write(s);
    }

    public void finduser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email=request.getParameter("email");
        System.out.print(email);
        User user=us.finduser(email);
        System.out.println(user+"123456");
        request.setAttribute("user",user);
        request.getRequestDispatcher("page/user/userInfo1.jsp").forward(request,response);
    }


    public void findcount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("nmsl");
        int x=us.findcount();
        System.out.println(x);
        Gson gson=new Gson();
        String s =gson.toJson(x);
        response.getWriter().write(s);
    }
}
