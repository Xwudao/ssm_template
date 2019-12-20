package com.misiai.service;

import com.misiai.entity.User;

public interface UserService {
    User findByUAndP(User user);
}
