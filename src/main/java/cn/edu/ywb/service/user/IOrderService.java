package cn.edu.ywb.service.user;

import cn.edu.ywb.pojo.Order;

import java.util.List;

public interface IOrderService {
    List<Order> findOrderByUserId(Integer userId);

    void receive(Integer id);
}
