package com.igeek.service;

import com.igeek.domain.User;

public interface UserService {
    User findUserByEmail(User user);

    User findUserByUsername(User user);
}
