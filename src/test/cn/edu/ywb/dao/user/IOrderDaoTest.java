package cn.edu.ywb.dao.user;

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

    @Test
    public void findOderByUserId(){
        List<Order> orderList = orderDao.findOrderByUserId(1);
        System.out.println(orderList);
    }

    @Test
    public void receive(){
        orderDao.receive(1);
    }
}