package com.misiai.test;

import com.misiai.entity.User;
import com.misiai.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:spring-*.xml"})
public class TestAC {
    @Autowired
    private UserService userService = null;

    // private ApplicationContext ac = null;
    //
    // @Before
    // public void before() {
    //     ac = new ClassPathXmlApplicationContext("spring-mvc.xml");
    //     userService = (UserService) ac.getBean("userService");
    // }
    @Test
    public void test() {
        User u = new User("123", "123");
        User user = userService.findByUAndP(u);
        System.out.println("user = " + user);
    }
}
