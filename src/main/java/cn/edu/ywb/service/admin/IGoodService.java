package cn.edu.ywb.service.admin;

import cn.edu.ywb.pojo.Good;

import java.util.List;

public interface IGoodService {
    Boolean addGood(Good good);

    Boolean deleteGood(Good good);

    Boolean updateGood(Good good);

    List<Good> findAllGood();

    List<Good> findGoodByName(String goodName);

    Good findGoodById(Integer id);
}
