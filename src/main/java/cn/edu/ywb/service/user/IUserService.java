package cn.edu.ywb.service.user;

import cn.edu.ywb.pojo.User;

import java.util.List;

public interface IUserService {
    User login(String username, String password);

    void register(User user);

    void modifyUserInfo(User user);

    List<User> findAllUser();

}
