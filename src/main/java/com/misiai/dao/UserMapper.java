package com.misiai.dao;

import com.misiai.entity.User;

public interface UserMapper {
    User findByUAndP(User user);

    User findByU(String username);
}
