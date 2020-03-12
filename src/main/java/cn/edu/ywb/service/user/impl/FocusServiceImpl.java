package cn.edu.ywb.service.user.impl;

import cn.edu.ywb.dao.user.IFocusDao;
import cn.edu.ywb.service.user.IFocusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class FocusServiceImpl implements IFocusService {
    @Autowired
    private IFocusDao focusDao;

    @Override
    public void addToWishList(Integer uid, Integer gid) {
        focusDao.addToWishList(uid,gid);
    }
}
