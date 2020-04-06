package cn.edu.ywb.dao.user;

import cn.edu.ywb.pojo.*;
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

    @Delete("delete from ordertable where id = #{id}")
    void deleteOrderById(Integer id);


    @Select("select * from ordertable where status = #{status}")
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
    List<Order> findOrderByStatus(Integer status);

    @Update("update ordertable set status = #{status} where id = #{id}")
    void changeStatusById(@Param("id") Integer id, @Param("status") Integer status);

    @Select("select * from ordertable where status = 1 or status = 2")
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
    List<Order> findOrderByStatus1_2();


    @Insert("insert into ordertable (userId,goodId,addressId,status,amount,orderDate,shoppingNumber) values(#{c.userId},#{c.goodId},#{addressId},1,#{c.good.grprice}*#{c.shoppingNumber},SYSDATE(),#{c.shoppingNumber})")
    void addNewOrder(@Param("c") Cart c ,@Param("addressId") Integer addressId);
}
