package com.igeek.web;

import com.igeek.domain.Email;
import com.igeek.service.EmailService;
import com.igeek.utils.BeanFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by LENOVO on 2019/10/18.
 */
@WebServlet("/email")
public class EmailServlet extends BaseServlet {
    EmailService service = (EmailService) BeanFactory.getBean("emailservice");
    public void addEmail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("author");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String comment = request.getParameter("comment");
        Email e = new Email(name,email,subject,comment);
        service.addEmail(e);
        response.sendRedirect("contact.jsp");
    }
}
