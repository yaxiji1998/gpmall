package cn.edu.ywb.dao.user;

import cn.edu.ywb.pojo.Cart;
import cn.edu.ywb.pojo.Order;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.sound.midi.SoundbankResource;
import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class IOrderDaoTest {

    @Autowired
    private IOrderDao orderDao;

    @Autowired
    private ICartDao cartDao;

    @Test
    public void findOderByUserId(){
        List<Order> orderList = orderDao.findOrderByUserId(1);
        System.out.println(orderList);
    }

    @Test
    public void receive(){
        orderDao.receive(1);
    }

    @Test
    public void addNewOrder(){

        List<Cart> cartList = cartDao.findCartByUserId(2);
        orderDao.addNewOrder(cartList.get(0),1);
    }
}