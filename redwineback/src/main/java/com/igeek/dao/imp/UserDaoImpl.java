package com.igeek.dao.imp;

import com.igeek.dao.UserDao;
import com.igeek.domain.User;
import com.igeek.untilts.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;
import java.util.Date;

public class UserDaoImpl implements UserDao {
    QueryRunner qr =new QueryRunner(JDBCTools.getDataSource());
    String sql="";
    @Override
    public User finduserbyEmail(User user) {
        sql="select * from userb where email=? and password=?";
        try {
            return qr.query(sql,new BeanHandler<>(User.class),user.getEmail(),user.getPassword());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public User finduserbyUname(User user) {
        sql="select * from userb where uname=? and password=?";
        try {
            return qr.query(sql,new BeanHandler<>(User.class),user.getUname(),user.getPassword());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void addlastlogin(Date lastlogin,String uid) {
        sql="update userb set lastlogin=? where uid=?";
        try {
            qr.update(sql,lastlogin,uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
