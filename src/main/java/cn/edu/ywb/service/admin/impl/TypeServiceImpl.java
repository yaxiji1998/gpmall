package cn.edu.ywb.service.admin.impl;

import cn.edu.ywb.dao.admin.ITypeDao;
import cn.edu.ywb.pojo.GoodsType;
import cn.edu.ywb.service.admin.ITypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TypeServiceImpl implements ITypeService {
    @Autowired
    private ITypeDao typeDao;
    @Override
    public Boolean addType(GoodsType type) {
        int a = typeDao.addType(type);
        if(a!=0){
            return true;
        }else {
            return false;

        }
    }

    @Override
    public Boolean deleteType(GoodsType type) {
        int a = typeDao.deleteType(type);
        if(a!=0){
            return true;
        }else {
            return false;

        }
    }

    @Override
    public List<GoodsType> findAllGoodType() {
        return typeDao.findAllType();
    }
}
