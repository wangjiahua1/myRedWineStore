package com.igeek.untilts;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class Mailutils {
    public static void sendMail(String to,String title,String context){
        try {
            Properties props=new Properties();
            props.setProperty("mail.transport.protocol","SMTP");
            props.setProperty("mail.host", "smtp.qq.com");
            props.setProperty("mail.smtp.auth", "true");
            Authenticator auth=new Authenticator() {
                public javax.mail.PasswordAuthentication getPasswordAuthentication() {
                    return new javax.mail.PasswordAuthentication("1115824053","vfvtpwtnruobjiih");
                }
            };
            Session session=Session.getInstance(props,auth);
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("1115824053@qq.com"));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(title);
            message.setContent(context, "text/html;charset=utf-8");
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
