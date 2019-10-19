package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.Category;
import com.igeek.service.CategoryService;
import com.igeek.utils.BeanFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author jerryHe
 * @create 2019-10-08 15:59
 */

@WebServlet("/category")
public class CategoryServlet extends BaseServlet {
    public void findcategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryService service=(CategoryService)BeanFactory.getBean("mycateservice");
        List<Category> categories=service.findcategory();
        Gson gson =new Gson();
        String jsonString =gson.toJson(categories);
        response.getWriter().write(jsonString);
    }
}
