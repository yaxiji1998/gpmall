package cn.edu.ywb.dao.user;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class IFocusDaoTest {
    @Autowired
    private IFocusDao focusDao;

    @Test
    public void addToWishList(){
        focusDao.addToWishList(1,10);
    }
}