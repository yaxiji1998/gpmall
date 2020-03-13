package cn.edu.ywb.dao.user;

import cn.edu.ywb.pojo.Address;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class IAddressDaoTest {

    @Autowired
    private IAddressDao addressDao;

    @Test
    public void findAddressByUserId(){
        List<Address> addressByUserId = addressDao.findAddressByUserId(1);
        System.out.println(addressByUserId.get(0));
    }
    @Test
    public void modifyAddressById(){
        Address address = new Address();
        address.setAddress("111");
        address.setName("jj");
        address.setPhoneNumber("131");
        address.setId(1);
        addressDao.modifyAddressById(address);
    }

    @Test
    public void addNullAddressByUserId(){
        addressDao.addNullAddressByUserId(1);
    }
}