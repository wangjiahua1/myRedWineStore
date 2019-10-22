package com.igeek.dao;

import com.igeek.domain.User;

public interface UserDao {
    User findUserByEmail(User user);

    User findUserByUsername(User user);

    boolean checkActiveCode(String activeCode);

    void updateActiveCode(String activeCode);

    void save(User user);

    int findforgetpasswordu(User user);

    void saveforgetu(User user);
}
