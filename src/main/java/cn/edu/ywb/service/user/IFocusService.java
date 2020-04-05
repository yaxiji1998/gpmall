package cn.edu.ywb.service.user;

import cn.edu.ywb.pojo.WishList;

import java.util.List;

public interface IFocusService {
    void addToWishList(Integer uid, Integer gid);

    List<WishList> findWishListByUserId(Integer userId);

    void deleteByGoodIdAndUserId(Integer uid, Integer gid);
}
