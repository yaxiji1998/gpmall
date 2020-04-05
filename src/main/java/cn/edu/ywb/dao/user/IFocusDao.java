package cn.edu.ywb.dao.user;

import cn.edu.ywb.pojo.Good;
import cn.edu.ywb.pojo.WishList;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface IFocusDao {


    @Insert("insert into focustable (goodId,userId) values(#{goodId},#{userId})")
    void addToWishList(@Param("userId") Integer userId,@Param("goodId") Integer goodId);


    @Select("select * from focustable where userId = #{userId}")
    @Results({
            @Result(id = true,property = "id",column = "id"),
            @Result(property = "goodId",column = "goodId"),
            @Result(property = "userId",column = "userId"),
            @Result(property = "good",column = "goodId",javaType = Good.class,one = @One(select = "cn.edu.ywb.dao.admin.IGoodDao.findGoodById"))
    })
    List<WishList> findWishListByUserId(Integer userId);

    @Delete("delete from focustable where userId = #{uid} and goodId = #{gid}")
    void deleteByGoodIdAndUserId(@Param("uid") Integer uid, @Param("gid") Integer gid);
}
