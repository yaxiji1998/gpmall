package cn.edu.ywb.service.admin.impl;

import cn.edu.ywb.dao.admin.IGoodDao;
import cn.edu.ywb.pojo.Good;
import cn.edu.ywb.service.admin.IGoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class GoodServiceImpl implements IGoodService {
    @Autowired
    private IGoodDao goodDao;

    @Override
    public Boolean addGood(Good good) {
        int a = goodDao.addGood(good);
        if(a!=0){
            return true;
        }else {

            return false;
        }
    }

    @Override
    public Boolean deleteGood(Good good) {
        int a = goodDao.deleteGood(good);
        if(a!=0){
            return true;
        }else {

            return false;
        }
    }

    @Override
    public Boolean updateGood(Good good) {
        int a = goodDao.updateGood(good);
        if(a!=0){
            return true;
        }else {

            return false;
        }
    }

    @Override
    public List<Good> findAllGood() {
        return goodDao.finfAllGood();
    }

    @Override
    public List<Good> findGoodByName(String goodName) {
        return goodDao.findGoodByName(goodName);
    }

    @Override
    public Good findGoodById(Integer id) {
        return goodDao.findGoodById(id);
    }
}
