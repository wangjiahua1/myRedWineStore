package com.igeek.service;

import com.igeek.domain.User;

public interface UserService {
    User findUserByEmail(User user);

    User findUserByUsername(User user);

    void save(User user);
    public boolean checkActiveCode(String activeCode) ;

    public void updateActiveCode(String activeCode);

    int findforgetpasswordu(User user);

    void saveforgetu(User user);
}
