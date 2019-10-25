package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.User;
import com.igeek.service.UserService;
import com.igeek.utils.BeanFactory;
import com.igeek.utils.MD5Utils;
import org.omg.CORBA.portable.ApplicationException;

import com.igeek.utils.MD5Utils;
import com.igeek.utils.MailUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sound.midi.Soundbank;
import java.io.IOException;
import java.io.PrintWriter;
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
        //调用service，使用changeUserAccount方法更改用户信息
        service.changeUserAccount(user);
        System.out.println("user:"+user);
        request.getRequestDispatcher("index.jsp").forward(request,response);
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
                if(!(MD5Utils.enCode(newpwd).equals(pwd))){//如果新密码与原密码不同，执行更新密码操作
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
                msg ="抱歉，新密码输入不一致";
                request.getSession().setAttribute("msg",msg);
            }
        }else{
            msg ="旧密码输入错误";
            request.getSession().setAttribute("msg",msg);
        }
        request.getRequestDispatcher("changePassword.jsp").forward(request,response);
    }
}

