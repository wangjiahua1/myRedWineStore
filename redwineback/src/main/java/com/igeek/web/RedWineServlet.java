package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.Brand;
import com.igeek.domain.Category;
import com.igeek.domain.RedWine;
import com.igeek.service.impl.RedWineServiceImpl;
import com.igeek.untilts.BeanFactory;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@WebServlet("/redwine")
public class RedWineServlet extends BaseServlet {
    RedWineServiceImpl rws= (RedWineServiceImpl) BeanFactory.getBean("myredwineservice");
    public void getredwinebypid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pid= Integer.parseInt(request.getParameter("id"));
        RedWine redWine=rws.getredwinebypid(pid);
        request.setAttribute("redWine",redWine);
        request.getRequestDispatcher("redwinemessage.jsp").forward(request,response);
    }


    public void getredwineBrand(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Brand> brand=  rws.getredwineBrand();

        Gson gson=new Gson();
        String s = gson.toJson(brand);
        response.getWriter().write(s);
    }


    public void getredwineCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categories=rws.getredwineCategory();
        Gson gson=new Gson();
        String s = gson.toJson(categories);
        response.getWriter().write(s);
    }

    //修改
    public void updateRedwine(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RedWine redWine=new RedWine();
        redWine.setPname(request.getParameter("pname"));
        System.out.println(redWine.getPname());
        redWine.setPid(Integer.parseInt(request.getParameter("pid")));
        redWine.setBrand(request.getParameter("brand"));
        System.out.println(redWine.getBrand());
        System.out.println(request.getParameter("categroy"));
        redWine.setCid(rws.getredwineCategoryByname(request.getParameter("category")));
        redWine.setPimage(request.getParameter("pimage"));
        redWine.setIshot(request.getParameter("ishot"));
        System.out.println(redWine.toString());
        boolean flag=rws.updateRedwine(redWine);
        if(flag){
            response.getWriter().write("{'message':'修改成功'}");
        }else{
            response.getWriter().write("{'message':'修改失败'}");
        }
        request.getRequestDispatcher("updateSucess.jsp").forward(request,response);
    }

    //增加
    public void addRedwine(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RedWine redWine=new RedWine();

        Map<String, String[]> map = request.getParameterMap();

        // 通过工具类的 populate方法，将获取到的Map集合数据自动存入实体类user中，根据表单中的name属性值和实体类中的属性字段名相对应存入
        try {
            BeanUtils.populate(redWine, map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        System.out.println(redWine.toString());
        boolean flag=rws.addRedwine(redWine);
        if(flag){
            response.getWriter().write("{'message':'增加成功'}");
        }else{
            response.getWriter().write("{'message':'增加失败'}");
        }
        request.getRequestDispatcher("updateSucess.jsp").forward(request,response);
    }

    //删除
    public void deleteRedWineByPid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid=request.getParameter("pid");
        System.out.println(pid);
        boolean flag=rws.deleteRedWineByPid(pid);
        if(flag){
            response.getWriter().write("{'message':'删除成功'}");
        }else{
            response.getWriter().write("{'message':'删除失败'}");
        }
    }

    //查询
    public void findRedWineByPid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid=request.getParameter("pid");
        System.out.println(pid);
        RedWine redWine=rws.findRedWineByPid(pid);
        Gson gson=new Gson();
        String s = gson.toJson(redWine);
        response.getWriter().write(s);
    }
}
