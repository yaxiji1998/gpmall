package cn.edu.ywb.dao.admin;

import cn.edu.ywb.pojo.Admin;
import org.apache.ibatis.annotations.Select;

public interface IAdminDao {


    @Select("select * from admin")
    Admin login(String username, String password);
}
