package cn.edu.ywb.dao.user;

import cn.edu.ywb.pojo.Address;
import cn.edu.ywb.pojo.Good;
import cn.edu.ywb.pojo.Order;
import cn.edu.ywb.pojo.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface IOrderDao {



    @Select("select * from ordertable where userId = #{userId}")
    @Results({
            @Result(id = true,property = "id",column = "id"),
            @Result(property = "userId",column = "userId"),
            @Result(property = "goodId",column = "goodId"),
            @Result(property = "addressId",column = "addressId"),
            @Result(property = "status",column = "status"),
            @Result(property = "amount",column = "amount"),
            @Result(property = "shoppingNumber",column = "shoppingNumber"),
            @Result(property = "orderDate",column = "orderDate"),
            @Result(property = "user",column = "userId",javaType = User.class,one = @One(select = "cn.edu.ywb.dao.user.IUserDao.findById")),
            @Result(property = "good",column = "goodId",javaType = Good.class,one = @One(select = "cn.edu.ywb.dao.admin.IGoodDao.findGoodById")),
            @Result(property = "address",column = "addressId",javaType = Address.class,one = @One(select = "cn.edu.ywb.dao.user.IAddressDao.findAddressById"))
    })
    List<Order> findOrderByUserId(Integer userId);


    @Update("update ordertable set status = 3 where id = #{id}")
    void receive(Integer id);
}
