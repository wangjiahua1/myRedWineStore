package com.igeek.service.imp;

import com.igeek.dao.UserDao;
import com.igeek.domain.User;
import com.igeek.service.UserService;
import com.igeek.utils.BeanFactory;
import com.igeek.utils.MD5Utils;

public class UserServiceImpl implements UserService {

    UserDao dao= (UserDao) BeanFactory.getBean("userDao");
    @Override
    public User findUserByEmail(User user) {
        //MD5编码
        String pwd=user.getPassword();
        String md5Pwd= MD5Utils.enCode(pwd);
        user.setPassword(md5Pwd);

        return dao.findUserByEmail(user);
    }
    public boolean checkActiveCode(String activeCode) {
        return dao.checkActiveCode(activeCode);
    }

    @Override
    public User findUserByUsername(User user) {
        //MD5编码
        String pwd=user.getPassword();
        String md5Pwd= MD5Utils.enCode(pwd);
        user.setPassword(md5Pwd);

        return dao.findUserByUsername(user);
    }

    @Override
    public void changeUserAccount(User user) {
        dao.changeUserAccount(user);
    }

    @Override
    public void changeUserPassword(User user) {
        //MD5编码
        String pwd=user.getPassword();
        String md5Pwd= MD5Utils.enCode(pwd);
        user.setPassword(md5Pwd);

        dao.changeUserPassword(user);
    }

    public void updateActiveCode(String activeCode) {
        dao.updateActiveCode(activeCode);
    }

    @Override
    public int findforgetpasswordu(User user) {

        return dao.findforgetpasswordu(user);
    }

    @Override
    public void saveforgetu(User user) {
        dao.saveforgetu(user);
    }

    public void save(User user) {
        dao.save(user);
    }


}
