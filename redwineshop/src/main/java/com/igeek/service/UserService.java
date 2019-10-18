package com.igeek.service;

import com.igeek.domain.User;

public interface UserService {
    User findUser(User user);
    public boolean checkActiveCode(String activeCode);
    public void updateActiveCode(String activeCode) ;
    public void save(User user) ;
}
