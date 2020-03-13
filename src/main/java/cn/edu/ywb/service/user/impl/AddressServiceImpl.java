package cn.edu.ywb.service.user.impl;

import cn.edu.ywb.dao.user.IAddressDao;
import cn.edu.ywb.pojo.Address;
import cn.edu.ywb.service.user.IAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AddressServiceImpl implements IAddressService {
    @Autowired
    private IAddressDao addressDao;
    @Override
    public List<Address> findAddressByUserId(Integer userId) {
        return addressDao.findAddressByUserId(userId);
    }

    @Override
    public void modifyAddressById(Address address) {
        addressDao.modifyAddressById(address);
    }

    @Override
    public void initAddressByUserId(Integer id) {
        addressDao.addNullAddressByUserId(id);
        addressDao.addNullAddressByUserId(id);
        addressDao.addNullAddressByUserId(id);
    }
}
