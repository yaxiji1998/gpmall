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

    @Override
    public void deleteOrderById(Integer id) {
        orderDao.deleteOrderById(id);
    }

    @Override
    public List<Order> findOrderByStatus(Integer status) {
        if(status==1){
            return orderDao.findOrderByStatus1_2();
        }else {
            return orderDao.findOrderByStatus(status);

        }
    }

    @Override
    public void changeStatusById(Integer id, Integer status) {
        orderDao.changeStatusById(id,status);
    }
}
