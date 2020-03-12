package cn.edu.ywb.dao.user;

import cn.edu.ywb.pojo.User;
import cn.edu.ywb.service.user.IUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class IUserDaoTest {

    @Autowired
    private IUserDao userDao;
    @Test
    public void testFindByName(){
        System.out.println(userDao);
        User user = userDao.findByName("haha");
        System.out.println(user);
    }
}