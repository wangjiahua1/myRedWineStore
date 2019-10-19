package com.igeek.web;

import com.igeek.domain.User;
import com.igeek.service.UserService;
import com.igeek.utils.BeanFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author jerryHe
 * @create 2019-10-08 15:59
 */

@WebServlet("/user")
public class UserServlet extends BaseServlet {
    UserService service= (UserService) BeanFactory.getBean("userService");

//    public void myAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("successful");
//        //判断是否登录
//        User user= (User) request.getSession().getAttribute("user");
//        if(user==null){
//            //跳转登录
//            response.sendRedirect(request.getContextPath()+"/index.jsp");
//
//        }
//
//    }

    public void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        session.removeAttribute("user");

        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }

    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取参数
        String log=request.getParameter("log");
        String pwd=request.getParameter("pwd");
        User user=new User();
        User u=null;
        if(log.contains("@")){
            //使用邮箱登录
            user.setEmail(log);
            user.setPassword(pwd);
            //调用service判断是否存在此用户
             u= service.findUserByEmail(user);
        }else {
            //使用用户名登录
            user.setUsername(log);
            user.setPassword(pwd);
            //调用service判断是否存在此用户
             u= service.findUserByUsername(user);
        }
//        System.out.println("u:"+u);
        String msg="";
        System.out.println(u);
        if(u==null){
            //用户名或密码错误
            msg="用户名或密码错误";
            response.sendRedirect(request.getContextPath()+"/index.jsp");
            return;
        }else {
            //用户存入session中
            HttpSession session=request.getSession();
            session.setAttribute("user",u);
            //获取要跳转的url
            String url=request.getParameter("url");
            if(url==null){
                //跳转
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }else {
                request.getRequestDispatcher(url).forward(request,response);
            }

        }
    }
}
