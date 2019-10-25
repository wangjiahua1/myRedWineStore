package com.igeek.utils;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 * @author jerryHe
 * @create 2019-09-25 11:19
 */
public class MailUtils {
    public static void  sendMail(String to,String title,String content){
        try {
            // 1.创建一个程序与邮件服务器会话对象 Session
            Properties props = new Properties();
            props.setProperty("mail.transport.protocol", "SMTP");//SMTP 简单邮件协议
            props.setProperty("mail.host", "smtp.126.com");//邮件服务器
            props.setProperty("mail.smtp.auth", "true");// 指定验证为true 需要验证126邮箱的用户名和授权码

            // 创建验证器
            Authenticator auth = new Authenticator() {
                public PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("igeekhome", "igeekhome123");//授权码
                }
            };
            //邮件回话.不是web中的HttpSession
            Session session = Session.getInstance(props, auth);

            // 2.创建一个Message,它相当于是邮件内容
            Message message = new MimeMessage(session);

            message.setFrom(new InternetAddress("igeekhome@126.com")); // 设置发送者

            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to)); // 设置发送方式与接收者

            message.setSubject(title);
            // message.setText("这是一封激活邮件,请<a href='#'>点击</a>");

            message.setContent(content, "text/html;charset=utf-8");

            // 3.创建 Transport用于将邮件发送

            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }
}