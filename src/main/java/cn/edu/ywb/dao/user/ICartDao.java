package cn.edu.ywb.dao.user;

import cn.edu.ywb.pojo.Cart;
import cn.edu.ywb.pojo.Good;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface ICartDao {

    @Insert("insert into carttable (userId,goodId,shoppingNumber) values(#{userId},#{goodId},#{shoppingNumber})")
    void addToCart(@Param("goodId") Integer goodId,@Param("userId") Integer userId,@Param("shoppingNumber") Integer shoppingNumber);


    @Select("select * from carttable where userId = #{userId}")
    @Results({
        @Result(id = true,property = "id",column = "id"),
        @Result(property = "userId",column = "userId"),
        @Result(property = "goodId",column = "goodId"),
        @Result(property = "shoppingNumber",column = "shoppingNumber"),
        @Result(property = "good",column = "goodId" ,javaType = Good.class,one = @One(select="cn.edu.ywb.dao.admin.IGoodDao.findGoodById"))
    })
    List<Cart> findCartByUserId(Integer userId);

    @Update("update carttable set shoppingNumber = #{shoppingNumber} where id = #{id}")
    void updateCartNumberById(@Param(value = "shoppingNumber") Integer shoppingNumber, @Param("id") Integer id);
}
