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

        if(log.contains("@")){
            //使用邮箱登录
            user.setEmail(log);
        }else {
            //使用用户名登录
            user.setUsername(log);
        }
        user.setPassword(pwd);
//        System.out.println("user:"+user);
        //调用service判断是否存在此用户
        User u= service.findUser(user);
        String msg="";
        if(u==null){
            //用户名或密码错误
            msg="用户名或密码错误";
            response.sendRedirect(request.getContextPath()+"/index.jsp");
            return;
        }else {
            //用户存入session中
            HttpSession session=request.getSession();
            session.setAttribute("user",u);

            //跳转
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
    }
}
