package com.igeek.service.impl;

import com.igeek.dao.UserDao;
import com.igeek.domain.User;
import com.igeek.service.UserService;
import com.igeek.untilts.BeanFactory;
import com.igeek.untilts.MD5Utils;

import java.util.Date;
import java.util.List;

public class UserServiceImpl implements UserService {
    UserDao ud = (UserDao) BeanFactory.getBean("userdao");
    @Override
    public User finduserbyEmail(User user) {
        String pwd = user.getPassword();
        String encodePwd = MD5Utils.enCode(pwd);
        user.setPassword(encodePwd);
        return ud.finduserbyEmail(user);
    }

    @Override
    public User finduserbyUname(User user) {
        String pwd = user.getPassword();
        String encodePwd = MD5Utils.enCode(pwd);
        user.setPassword(encodePwd);
        return ud.finduserbyUname(user);
    }

    @Override
    public void addlastlogin(Date lastlogin,String uid) {
        ud.addlastlogin(lastlogin,uid);
    }

    @Override
    public void addcode(String activecode,String uuid,String email) {
        ud.addcode(activecode,uuid,email);
    }

    @Override
    public User findcode(String email) {
        return ud.findcode(email);
    }

    @Override
    public void register(User user){
        String pwd = user.getPassword();
        String encodePwd = MD5Utils.enCode(pwd);
        user.setPassword(encodePwd);
        ud.register(user);
    }

    @Override
    public void information(User user, String email) {
        ud.information(user,email);
    }

    @Override
    public User findpassword(String uname) {
        return ud.findpassword(uname);
    }

    @Override
    public void updatepassword(String newpassword,String uname) {
        newpassword=MD5Utils.enCode(newpassword);
        ud.updatepassword(newpassword,uname);
    }

    @Override
    public List<User> findalluser() {
        return ud.findalluser();
    }

    @Override
    public User finduser(String email) {
        return ud.finduser(email);
    }

    @Override
    public int findcount() {
        return ud.findcount();
    }
}
