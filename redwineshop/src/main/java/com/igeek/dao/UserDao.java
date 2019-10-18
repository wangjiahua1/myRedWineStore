package com.igeek.dao;

import com.igeek.domain.User;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public interface UserDao {
    User findUser(User user);
    public boolean checkActiveCode(String activeCode) ;
    public void updateActiveCode(String activeCode) ;
    public void save(User user) ;
}
