package cn.edu.ywb.service.admin.impl;

import cn.edu.ywb.dao.admin.IAdminDao;
import cn.edu.ywb.pojo.Admin;
import cn.edu.ywb.service.admin.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class AdminServiceImpl implements IAdminService {

    @Autowired
    private IAdminDao adminDao;

    @Override
    public Boolean login(String username, String password) {
        Admin admin = null;
        admin =  adminDao.login(username,password);
        if (admin==null||!admin.getPassword().equals(password)){
            return false;
        }else {
            return true;
        }

    }
}
