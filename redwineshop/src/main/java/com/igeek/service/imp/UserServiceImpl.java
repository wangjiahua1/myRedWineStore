package com.igeek.service.imp;

import com.igeek.dao.UserDao;
import com.igeek.domain.User;
import com.igeek.service.UserService;
import com.igeek.utils.BeanFactory;

public class UserServiceImpl implements UserService {
    UserDao dao= (UserDao) BeanFactory.getBean("userDao");
    @Override
    public User findUserByEmail(User user) {
        //MD5编码
//        String pwd=user.getPassword();
//        String md5Pwd= MD5Utils.enCode(pwd);
//        user.setPassword(md5Pwd);

        return dao.findUserByEmail(user);
    }

    @Override
    public User findUserByUsername(User user) {
        //MD5编码
//        String pwd=user.getPassword();
//        String md5Pwd= MD5Utils.enCode(pwd);
//        user.setPassword(md5Pwd);

        return dao.findUserByUsername(user);
    }

}
