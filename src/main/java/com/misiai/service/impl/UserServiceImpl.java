package com.misiai.service.impl;

import com.misiai.dao.UserMapper;
import com.misiai.entity.User;
import com.misiai.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;


    @Override
    public User findByUAndP(User user) {
        return this.userMapper.findByUAndP(user);
    }
}
