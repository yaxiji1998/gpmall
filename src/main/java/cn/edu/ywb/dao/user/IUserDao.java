package cn.edu.ywb.dao.user;

import cn.edu.ywb.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface IUserDao {

    @Select("select * from user where name = #{username}")
    User findByName(String username);

    @Insert("insert into user (name,password,gender,phoneNumber,age,email) values(#{name},#{password},#{gender},#{phoneNumber},0,#{email})")
    void addNewUser(User user);
}
