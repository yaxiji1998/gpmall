package cn.edu.ywb.dao.user;

import cn.edu.ywb.pojo.Address;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface IAddressDao {

    @Select("select * from address where userId = #{userId}")
    List<Address> findAddressByUserId(Integer userId);

    @Select("select * from address where id = #{id}")
    Address findAddressById(Integer id);

    @Update("update address set name=#{name},phoneNumber = #{phoneNumber},address = #{address} where id = #{id}")
    void modifyAddressById(Address address);

    @Insert("insert into address (userId) values(#{id})")
    void addNullAddressByUserId(Integer id);
}
