package com.igeek.dao;

import com.igeek.domain.User;

import java.util.Date;

public interface UserDao {
    User finduserbyEmail(User user);

    User finduserbyUname(User user);

    void addlastlogin(Date lastlogin,String uid);
}
