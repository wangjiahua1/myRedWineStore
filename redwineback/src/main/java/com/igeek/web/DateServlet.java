package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.Data;
import com.igeek.service.DataService;
import com.igeek.untilts.BeanFactory;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by LENOVO on 2019/10/21.
 */
@WebServlet("/data")
public class DateServlet extends BaseServlet{
    DataService service = (DataService) BeanFactory.getBean("dataservice");
    public void findMostDate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Data> datas = service.findMostDate();
        Gson gson = new Gson();
        String jsonString = gson.toJson(datas);
        response.getWriter().write(jsonString);
    }
}
