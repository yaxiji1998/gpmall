package cn.edu.ywb.service.user.impl;

import cn.edu.ywb.dao.user.ICartDao;
import cn.edu.ywb.pojo.Cart;
import cn.edu.ywb.service.user.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CartServiceImpl implements ICartService {
    @Autowired
    private ICartDao cartDao;
    @Override
    public void addToCart(Integer gid, Integer uid, Integer number) {
        cartDao.addToCart(gid,uid,number);
    }

    @Override
    public List<Cart> findCartByUserId(Integer id) {
        return cartDao.findCartByUserId(id);
    }

    @Override
    public void updateCartNumberById(Integer shoppingNumber, Integer id) {
        cartDao.updateCartNumberById(shoppingNumber,id);
    }
}
