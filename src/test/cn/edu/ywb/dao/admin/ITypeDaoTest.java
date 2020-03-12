package cn.edu.ywb.dao.admin;

import cn.edu.ywb.pojo.GoodsType;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class ITypeDaoTest  {

    @Autowired
    private ITypeDao typeDao;
    @Test
    public void addType() {
        GoodsType type = new GoodsType();
        type.setTypeName("耳机");
        int a = typeDao.addType(type);
        System.out.println(a);
    }
    @Test
    public void deleteType(){
        GoodsType type = new GoodsType();
        type.setTypeName("耳机");
        int a = typeDao.deleteType(type);
        System.out.println(a);
    }
    @Test
    public void testFindById(){
        GoodsType typeById = typeDao.findTypeById(3);
        System.out.println(typeById);
    }
}