package com.igeek.web;

import com.igeek.domain.User;
import com.igeek.service.UserService;
import com.igeek.utils.BeanFactory;
import com.igeek.utils.MD5Utils;
import org.omg.CORBA.portable.ApplicationException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sound.midi.Soundbank;
import java.io.IOException;
import java.io.PrintWriter;

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
//        System.out.println(u);
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

    public void changeAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //获取弹窗用户信息
        String uid =request.getParameter("uid");
        String log =request.getParameter("log");
        String sex =request.getParameter("sex");
        String telephone =request.getParameter("telephone");
        String email =request.getParameter("email");
        User user =new User();
        user.setUid(uid);
        user.setUsername(log);
        user.setSex(sex);
        user.setTelephone(telephone);
        user.setEmail(email);
        //调用service,使用changeUserAccount方法更改用户信息
        service.changeUserAccount(user);
        System.out.println("user:"+user);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    public void changePassword(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        String msg ="";
        //获取保存在session域中的用户信息
        User user = (User) request.getSession().getAttribute("user");
        //获取页面数据
        String oldpwd =request.getParameter("oldpwd");//旧密码
        String newpwd =request.getParameter("newpwd");//新密码
        String renewpwd =request.getParameter("renewpwd");//确认新密码
        //得到该客户当前的密码字符串
        String pwd =user.getPassword();
        String MDoldpwd =MD5Utils.enCode(oldpwd);

        if(MDoldpwd.equals(pwd)){ //输入的旧密码与原密码一致
            if(newpwd.equals(renewpwd)){//判断输入的两个新密码是否一致
                if(!(MD5Utils.enCode(newpwd).equals(pwd))){//如果新密码与原密码不同,执行更新密码操作
                    user.setPassword(newpwd);
                    System.out.println(user);
                    //调用service修改密码
                    service.changeUserPassword(user);
                    msg ="密码修改成功";
                    request.getSession().setAttribute("msg",msg);
                    //登出用户账号
                    logout(request,response);
                }else{
                    msg ="新密码不能与旧密码相同";
                    request.getSession().setAttribute("msg",msg);
                }
            }else{
                msg ="抱歉,新密码输入不一致";
                request.getSession().setAttribute("msg",msg);
            }
        }else{
            msg ="旧密码输入错误";
            request.getSession().setAttribute("msg",msg);
        }
        request.getRequestDispatcher("changePassword.jsp").forward(request,response);
    }
}

