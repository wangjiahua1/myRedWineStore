package com.igeek.dao.impl;

import com.igeek.dao.UserDao;
import com.igeek.domain.User;
import com.igeek.untilts.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

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

    @Override
    public void addcode(String activecode,String uuid,String email) {
        sql="insert into userb values (?,null,?,null,null,?,null,null,null,null,null) ";
        try {
            qr.update(sql,uuid,email,activecode);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public User findcode(String email) {
        sql="select * from userb where email=?";
        try {
            return qr.query(sql,new BeanHandler<>(User.class),email);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void register(User user) {
        sql="update userb set password =? where email=?";
        try {
            qr.update(sql,user.getPassword(),user.getEmail());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void information(User user, String email) {
        sql="update userb set uname=?,memberorder=?,sex=?,telephone=?,birthday=?,area=? where email=?";
        try {
            qr.update(sql,user.getUname(),user.getMemberOrder(),user.getSex(),user.getTelephone(),
                    user.getBirthday() ,user.getArea(),email);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public User findpassword(String uname) {
        sql="select * from userb where uname=?";
        try {
            return qr.query(sql,new BeanHandler<>(User.class),uname);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void updatepassword(String newpassword,String uname) {
        sql="update userb set password=? where uname=?";
        try {
            qr.update(sql,newpassword,uname);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<User> findalluser() {
        sql="select * from userb";
        try {
            return qr.query(sql,new BeanListHandler<>(User.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public User finduser(String email) {
        sql="select * from userb where email=?";
        try {
            return qr.query(sql,new BeanHandler<>(User.class),email);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int findcount() {
        sql="select count(*) from userb";
        Long x=0l;
        try {
           x= qr.query(sql,new ScalarHandler<Long>());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Integer.parseInt(x+"");
    }
}
