package cn.edu.ywb.dao.admin;

import cn.edu.ywb.pojo.Good;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class IGoodDaoTest {

    @Autowired
    private IGoodDao goodDao;

    @Test
    public void addGood() {
        Good good = new Good();
        good.setGname("小米5");
        good.setGoodstype_id(3);
        good.setGoprice(100.0);
        good.setGrprice(100.2);
        good.setGpicture("qqq");
        good.setGstore(3);
        int a = goodDao.addGood(good);
        System.out.println(a);
    }

    @Test
    public void updateGood(){
        Good good = new Good();
        good.setGname("小米7");
        good.setGoodstype_id(3);
        good.setGoprice(100.0);
        good.setGrprice(100.2);
        good.setGpicture("qqq");
        good.setGstore(3);
        good.setId(1);
        int a = goodDao.addGood(good);
        System.out.println(a);
    }
    @Test
    public void findAllTest(){
        List<Good> list = goodDao.finfAllGood();
        for (Good good:list
             ) {
            System.out.println(good);
        }
    }
    @Test
    public void findGoodByIdTest(){
        Good good = goodDao.findGoodById(1);
        System.out.println(good);
    }
}