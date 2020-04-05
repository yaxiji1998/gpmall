package cn.edu.ywb.service.user.impl;

import cn.edu.ywb.dao.user.IFocusDao;
import cn.edu.ywb.pojo.WishList;
import cn.edu.ywb.service.user.IFocusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class FocusServiceImpl implements IFocusService {
    @Autowired
    private IFocusDao focusDao;

    @Override
    public void addToWishList(Integer uid, Integer gid) {
        focusDao.addToWishList(uid,gid);
    }

    @Override
    public List<WishList> findWishListByUserId(Integer userId) {
        return focusDao.findWishListByUserId(userId);
    }

    @Override
    public void deleteByGoodIdAndUserId(Integer uid, Integer gid) {
        focusDao.deleteByGoodIdAndUserId(uid,gid);
    }
}
