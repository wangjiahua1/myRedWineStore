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
}
