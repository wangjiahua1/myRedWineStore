package com.igeek.service;

import com.igeek.domain.User;

import java.util.Date;

public interface UserService {
    User finduserbyEmail(User user);

    User finduserbyUname(User user);

    void addlastlogin(Date lastlogin,String uid);
}
