package cn.edu.ywb.service.user.impl;

import cn.edu.ywb.service.user.IAddressService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class AddressServiceImplTest {

    @Autowired
    private IAddressService addressService;
    @Test
    public void initAddressByUserId() {
        addressService.initAddressByUserId(1);
    }
}