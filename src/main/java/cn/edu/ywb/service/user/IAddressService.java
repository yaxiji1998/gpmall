package cn.edu.ywb.service.user;

import cn.edu.ywb.pojo.Address;

import java.util.List;

public interface IAddressService {
    List<Address> findAddressByUserId(Integer userId);

    void modifyAddressById(Address address);

    void initAddressByUserId(Integer id);
}
