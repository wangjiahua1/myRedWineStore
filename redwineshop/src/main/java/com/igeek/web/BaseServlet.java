package com.igeek.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * @author jerryHe
 * @create 2019-10-08 15:59
 */


public class BaseServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //http://localhost:8383/webstore/user?method=login
        //http://localhost:8383/webstore/user?method=regist
        //使用反射执行请求中参数值对应的方法，要求每个请求都有一个method参数
        String method =request.getParameter("method");
        Class clazz =this.getClass();

        try {
            Method m =clazz.getMethod(method,HttpServletRequest.class,HttpServletResponse.class);
            m.invoke(this,request,response);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }
}
