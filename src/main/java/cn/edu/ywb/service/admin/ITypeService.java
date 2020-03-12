package cn.edu.ywb.service.admin;

import cn.edu.ywb.pojo.GoodsType;

import java.util.List;

public interface ITypeService {
    Boolean addType(GoodsType type);

    Boolean deleteType(GoodsType type);

    List<GoodsType> findAllGoodType();
}
