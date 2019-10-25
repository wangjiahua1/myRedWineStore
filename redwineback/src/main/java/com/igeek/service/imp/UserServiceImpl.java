package com.igeek.service.imp;

import com.igeek.dao.UserDao;
import com.igeek.domain.User;
import com.igeek.service.UserService;
import com.igeek.untilts.BeanFactory;

import java.util.Date;

public class UserServiceImpl implements UserService {
    UserDao ud = (UserDao) BeanFactory.getBean("userdao");
    @Override
    public User finduserbyEmail(User user) {
        return ud.finduserbyEmail(user);
    }

    @Override
    public User finduserbyUname(User user) {
        return ud.finduserbyUname(user);
    }

    @Override
    public void addlastlogin(Date lastlogin,String uid) {
        ud.addlastlogin(lastlogin,uid);
    }
}
