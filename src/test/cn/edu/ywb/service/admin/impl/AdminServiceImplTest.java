package cn.edu.ywb.service.admin.impl;

import cn.edu.ywb.pojo.Admin;
import cn.edu.ywb.service.admin.IAdminService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class AdminServiceImplTest  {
    @Autowired
    private IAdminService adminService;
    @Test
    public void loginTest(){
        System.out.println(adminService.login("haha","123"));

    }
}