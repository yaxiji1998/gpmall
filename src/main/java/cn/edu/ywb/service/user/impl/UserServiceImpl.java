package cn.edu.ywb.service.user.impl;

import cn.edu.ywb.dao.user.IUserDao;
import cn.edu.ywb.pojo.User;
import cn.edu.ywb.service.user.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements IUserService {

    @Autowired
    private IUserDao userDao;

    @Override
    public User login(String username, String password) {
        User user = null;
        user = userDao.findByName(username);
        if(user==null){
            return null;
        }else if(!user.getPassword().equals(password)){
            return null;
        }else {
            return user;
        }
    }

    @Override
    public void register(User user) {
        userDao.addNewUser(user);
    }

    @Override
    public void modifyUserInfo(User user) {
        userDao.modifyUserInfo(user);
    }
}
