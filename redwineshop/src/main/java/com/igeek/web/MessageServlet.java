package com.igeek.web;

import com.google.gson.Gson;
import com.igeek.domain.Message;
import com.igeek.service.MessageService;
import com.igeek.utils.BeanFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by LENOVO on 2019/10/17.
 */
@WebServlet("/message")
public class MessageServlet extends BaseServlet {
    MessageService service = (MessageService) BeanFactory.getBean("messageservice");
    public void findFiveMessage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Message> messages = service.findFiveMessage();
        String jsonString = new Gson().toJson(messages);
        response.getWriter().write(jsonString);
    }

    public void addMessage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("author");
        String email = request.getParameter("email");
        String message = request.getParameter("comment");
        Message m = new Message(name,email,message);
        service.addMessage(m);
        response.sendRedirect("blogdetails-fullwidth.jsp");
    }
}
