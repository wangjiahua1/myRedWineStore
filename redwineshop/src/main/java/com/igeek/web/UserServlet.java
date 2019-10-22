package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.User;
import com.igeek.service.UserService;
import com.igeek.utils.BeanFactory;
import com.igeek.utils.MD5Utils;
import com.igeek.utils.MailUtils;
import com.sun.org.apache.xml.internal.serialize.ElementState;

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
            HttpSession httpSession=request.getSession();
            httpSession.setAttribute("uid", u.getUid());
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

    public void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password=request.getParameter("password");
        String code=request.getParameter("accode");
        String emailhidden=request.getParameter("emailhidden");
        String emaill=request.getParameter("emaill");
        System.out.println(password+code+emaill);
        User user=new User();
      /*  try {
            BeanUtils.populate(user,request.getParameterMap());
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }*/
        //user.setCode(emailhidden);
        user.setEmail(emaill);
        //  user.setPassword(password);
        String uuid = UUID.randomUUID().toString();
        user.setUid(uuid);
        Random rd=new Random();
        String activeCode  = rd.nextInt(100000)+100000+"";
        if(emailhidden.equals(code)&&!emailhidden.equals("")&&emailhidden!=null){
            user.setCode(activeCode);
            System.out.println(user);
            /*UserService service = new UserService();
            service.updateActiveCode(activeCode);*/
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
/*        Gson gson=new Gson();
        String emailjson="{\"activeCode\":\""+activeCode+"\"}";
        response.getWriter().write(emailjson);*/
        //{"ememaill",email}
/*        User user=new User();
        user.setEmail(email);
        user.setUid("12345678945613789");
        user.setName("卧槽");
        user.setCode("123");
        Gson gson=new Gson();
        String s = gson.toJson(user);
        response.getWriter().write(s);*/
        Gson gson=new Gson();
        String s = gson.toJson(activeCode);
        response.getWriter().write(s);


        //跳转到页面
        //request.getRequestDispatcher("registerSuccess.jsp").forward(request,response);
    }
    public void activecode(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String activeCode=request.getParameter("activeCode");
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


    public void forgotpassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password=request.getParameter("password");
        String code=request.getParameter("accode");
        String emailhidden=request.getParameter("emailhidden");
        String emaill=request.getParameter("emaill");
        System.out.println(password+code+emaill);
        User user=new User();
      /*  try {
            BeanUtils.populate(user,request.getParameterMap());
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }*/
        //user.setCode(emailhidden);
        user.setEmail(emaill);
        //  user.setPassword(password);
        String uuid = UUID.randomUUID().toString();
        user.setUid(uuid);
        Random rd=new Random();
        String activeCode  = rd.nextInt(100000)+100000+"";
        if(emailhidden.equals(code)&&!emailhidden.equals("")&&emailhidden!=null){
           int findu= service.findforgetpasswordu(user);
          if(findu!=0){
              user.setCode(activeCode);
              System.out.println(user);
            /*UserService service = new UserService();
            service.updateActiveCode(activeCode);*/
              String encodePwd = MD5Utils.enCode(password);
              user.setPassword(encodePwd);
              HttpSession httpSession=request.getSession();
              httpSession.setAttribute("user",user);
              service.saveforgetu(user);
              //激活成功，跳转到登录页面
              response.sendRedirect("index.jsp");
          }else {
              response.sendRedirect("forgotpassword.jsp");
          }
        }
        else
        {
            response.sendRedirect("forgotpassword.jsp");
        }



    }
}
