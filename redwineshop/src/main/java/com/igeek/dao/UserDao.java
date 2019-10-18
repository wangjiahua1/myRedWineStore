package com.igeek.dao;

import com.igeek.domain.User;

public interface UserDao {
    User findUserByEmail(User user);

    User findUserByUsername(User user);
}
