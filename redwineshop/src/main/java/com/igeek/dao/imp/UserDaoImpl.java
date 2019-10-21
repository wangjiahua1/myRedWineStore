package com.igeek.dao.imp;

import com.igeek.dao.UserDao;
import com.igeek.domain.User;
import com.igeek.utils.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
    QueryRunner qr=new QueryRunner(JDBCTools.getDataSource());
    String sql="";
    @Override
    public User findUserByEmail(User user) {
        sql="select * from user where email = ? and password = ?";
        User u=null;
        try {
            u=qr.query(sql,new BeanHandler<>(User.class),user.getEmail(),user.getPassword());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }

    @Override
    public User findUserByUsername(User user) {
        sql="select * from user where username = ? and password = ?";
        User u=null;
        try {
            u=qr.query(sql,new BeanHandler<>(User.class),user.getUsername(),user.getPassword());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }

    @Override
    public void changeUserAccount(User user) {
        sql ="update user set username =? , sex=? , telephone=? , email=? where uid=?";
        try {
            qr.update(sql,user.getUsername(),user.getSex(),user.getTelephone(),user.getEmail(),user.getUid());
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void changeUserPassword(User user) {
        sql ="update user set password =? where uid =?";
        try {
            qr.update(sql,user.getPassword(),user.getUid());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean checkActiveCode(String activeCode) {
        return false;
    }

    public void updateActiveCode(String activeCode) {
        String  sql ="update user set state = 1 where code = ?";
        try {
            qr.update(sql,activeCode);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void save(User user) {//INSERT INTO table_name (列1, 列2,...) VALUES (值1, 值2,....)
        String sql="insert into user(uid,email,password,code) values(?,?,?,?)";
        try {
            qr.update(sql,user.getUid(),user.getEmail(),user.getPassword(),user.getCode());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
