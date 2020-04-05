package cn.edu.ywb.dao.admin;

import cn.edu.ywb.pojo.GoodsType;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ITypeDao {


    @Insert("insert into goodstype (typeName) values(#{typeName})")
    int addType(GoodsType type);

    @Delete("delete from goodstype where id=#{id}")
    int deleteType(GoodsType type);

    @Select("select * from goodstype where id=#{id}")
    GoodsType findTypeById(Integer id);

    @Select("select * from goodstype")
    List<GoodsType> findAllType();
}
