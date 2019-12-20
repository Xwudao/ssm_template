package com.misiai.controller;

import com.misiai.entity.User;
import com.misiai.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;


    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void login(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User u = new User(username, password);
        User user = userService.findByUAndP(u);
        System.out.println("user = " + user);
    }

}
