package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.User;
import com.igeek.service.UserService;
import com.igeek.utils.BeanFactory;
import com.igeek.utils.MD5Utils;
import com.igeek.utils.MailUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Random;
import java.util.UUID;

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
    public void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password=request.getParameter("password");
        String code=request.getParameter("accode");
        String emailhidden=request.getParameter("emailhidden");
        String emaill=request.getParameter("emaill");
        System.out.println(password+code+emaill);
        User user=new User();
        user.setEmail(emaill);
        String uuid = UUID.randomUUID().toString();
        user.setUid(uuid);
        Random rd=new Random();
        String activeCode  = rd.nextInt(100000)+100000+"";
        if(emailhidden.equals(code)&&!emailhidden.equals("")&&emailhidden!=null){
            user.setCode(activeCode);
            System.out.println(user);
            String encodePwd = MD5Utils.enCode(password);
            user.setPassword(encodePwd);
            HttpSession httpSession=request.getSession();
            httpSession.setAttribute("user",user);
            service.save(user);
            //激活成功，跳转到登录页面
            response.sendRedirect("index.jsp");
        }
        else
        {
            response.sendRedirect("register.jsp");
        }
    }
    public void getactivecode(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("getactivecode inner");
        String email=request.getParameter("emaill");
        String uuid = UUID.randomUUID().toString();
        Random rd=new Random();
        String activeCode  = rd.nextInt(100000)+100000+"";
        System.out.println("email"+email+"activeCode"+activeCode);

        String content = "<a href='http://localhost:8888/webstore/user?method=activecode&activeCode="+activeCode+"'>您的验证码为："+activeCode+"</a>";
        //发送邮件
        MailUtils.sendMail(email,"邮件验证",content);
        Gson gson=new Gson();
        String s = gson.toJson(activeCode);
        response.getWriter().write(s);
    }
    public void activecode(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String activeCode=request.getParameter("activeCode");
     //   UserService service = new UserService();
        //1.判断激活码是否一致
        boolean flag = service.checkActiveCode(activeCode);
        HttpSession httpSession=request.getSession();
        httpSession.setAttribute("flag",flag);
        if(flag){
            //2.修改状态
            service.updateActiveCode(activeCode);
            //激活成功，跳转到登录页面
            response.sendRedirect("login.jsp");
        }else{
            //激活失败，跳转到注册页面
            response.sendRedirect("register.jsp");
        }
    }
}
