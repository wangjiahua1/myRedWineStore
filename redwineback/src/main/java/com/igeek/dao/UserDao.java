package com.igeek.dao;

import com.igeek.domain.User;

import java.util.Date;
import java.util.List;

public interface UserDao {
    User finduserbyEmail(User user);

    User finduserbyUname(User user);

    void addlastlogin(Date lastlogin,String uid);

    void addcode(String activecode,String uuid,String email);

    User findcode(String email);

    void register(User user);

    void information(User user, String email);

    User findpassword(String uname);

    void updatepassword(String newpassword,String uname);

    List<User> findalluser();

    User finduser(String email);

    int findcount();
}
