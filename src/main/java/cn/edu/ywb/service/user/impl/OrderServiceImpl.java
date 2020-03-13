package cn.edu.ywb.service.user.impl;

import cn.edu.ywb.dao.user.IOrderDao;
import cn.edu.ywb.pojo.Order;
import cn.edu.ywb.pojo.User;
import cn.edu.ywb.service.user.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OrderServiceImpl implements IOrderService {

    @Autowired
    private IOrderDao orderDao;
    @Override
    public List<Order> findOrderByUserId(Integer userId) {
        return orderDao.findOrderByUserId(userId);
    }

    @Override
    public void receive(Integer id) {
        orderDao.receive(id);
    }
}
