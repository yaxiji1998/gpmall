package cn.edu.ywb.dao.user;

import cn.edu.ywb.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface IUserDao {

    @Select("select * from user where name = #{username}")
    User findByName(String username);

    @Insert("insert into user (name,password,gender,phoneNumber,age,email) values(#{name},#{password},#{gender},#{phoneNumber},0,#{email})")
    void addNewUser(User user);

    @Select("select * from user where id = #{id}")
    User findById(Integer id);

    @Update("update user set password = #{password},gender = #{gender},phoneNumber = #{phoneNumber},age = #{age},email = #{email} where id = #{id}")
    void modifyUserInfo(User user);

    @Select("select * from user")
    List<User> findAllUser();
}
