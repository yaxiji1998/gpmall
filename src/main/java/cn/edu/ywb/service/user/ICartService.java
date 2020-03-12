package cn.edu.ywb.service.user;

import cn.edu.ywb.pojo.Cart;

import java.util.List;

public interface ICartService {
    void addToCart(Integer gid, Integer uid, Integer number);

    List<Cart> findCartByUserId(Integer id);

    void updateCartNumberById(Integer shoppingNumber, Integer id);
}
