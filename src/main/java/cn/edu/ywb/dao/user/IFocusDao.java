package cn.edu.ywb.dao.user;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface IFocusDao {


    @Insert("insert into focustable (goodId,userId,focustime) values(#{goodId},#{userId},sysdate())")
    void addToWishList(@Param("userId") Integer userId,@Param("goodId") Integer goodId);
}
