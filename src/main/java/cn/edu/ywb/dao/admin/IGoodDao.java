package cn.edu.ywb.dao.admin;

import cn.edu.ywb.pojo.Good;
import cn.edu.ywb.pojo.GoodsType;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface IGoodDao {


    @Insert("insert into goodstable(gname,goprice,grprice,gstore,gpicture,goodstype_id) values(#{gname},#{goprice},#{grprice},#{gstore},#{gpicture},#{goodstype_id})")
    int addGood(Good good);

    @Delete("delete from goodstable where id=#{id}")
    int deleteGood(Good good);

    @Update("update goodstable set gname=#{gname},goprice=#{goprice},grprice=#{grprice},gstore=#{gstore},gpicture=#{gpicture},goodstype_id=#{goodstype_id} where id=#{id} ")
    int updateGood(Good good);

    @Select("select * from goodstable")
    @Results({
            @Result(id=true,property = "id",column = "id"),
            @Result(property = "gname",column = "gname"),
            @Result(property = "goprice",column = "goprice"),
            @Result(property = "grprice",column = "grprice"),
            @Result(property = "gstore",column = "gstore"),
            @Result(property = "gpicture",column = "gpicture"),
            @Result(property = "goodstype_id",column = "goodstype_id"),
            @Result(property = "goodsType",column = "goodstype_id",javaType = GoodsType.class,one=@One(select="cn.edu.ywb.dao.admin.ITypeDao.findTypeById")),
    })
    List<Good> finfAllGood();


    @Select("select * from goodstable where gname like CONCAT('%',#{goodName},'%')")
    @Results({
            @Result(id=true,property = "id",column = "id"),
            @Result(property = "gname",column = "gname"),
            @Result(property = "goprice",column = "goprice"),
            @Result(property = "grprice",column = "grprice"),
            @Result(property = "gstore",column = "gstore"),
            @Result(property = "gpicture",column = "gpicture"),
            @Result(property = "goodstype_id",column = "goodstype_id"),
            @Result(property = "goodsType",column = "goodstype_id",javaType = GoodsType.class,one=@One(select="cn.edu.ywb.dao.admin.ITypeDao.findTypeById")),
    })
    List<Good> findGoodByName(String goodName);


    @Select("select * from goodstable where id = #{id}")
    @Results({
            @Result(id=true,property = "id",column = "id"),
            @Result(property = "gname",column = "gname"),
            @Result(property = "goprice",column = "goprice"),
            @Result(property = "grprice",column = "grprice"),
            @Result(property = "gstore",column = "gstore"),
            @Result(property = "gpicture",column = "gpicture"),
            @Result(property = "goodstype_id",column = "goodstype_id"),
            @Result(property = "goodsType",column = "goodstype_id",javaType = GoodsType.class,one=@One(select="cn.edu.ywb.dao.admin.ITypeDao.findTypeById")),
    })
    Good findGoodById(Integer id);
}
