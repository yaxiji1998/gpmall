package cn.edu.ywb.dao.user;

import cn.edu.ywb.pojo.Cart;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class ICartDaoTest {
    @Autowired
    private ICartDao cartDao;

    @Test
    public void addToCard(){
        cartDao.addToCart(10,1,1);
    }

    @Test
    public void findCartByUserId(){
        List<Cart> carts = cartDao.findCartByUserId(1);
        for (Cart c :
                carts) {
            System.out.println(c);
        }
    }

    @Test
    public void updateById(){
        cartDao.updateCartNumberById(5,1);
    }

    @Test
    public void deleteById(){
        cartDao.deleteCartById(1);
    }
}