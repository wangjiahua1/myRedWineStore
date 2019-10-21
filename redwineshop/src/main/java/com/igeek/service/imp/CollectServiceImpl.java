package com.igeek.service.imp;

import com.igeek.dao.CollectDao;
import com.igeek.domain.Collect;
import com.igeek.domain.Product;
import com.igeek.service.CollectService;
import com.igeek.utils.BeanFactory;

import java.util.List;

/**
 * Created by LENOVO on 2019/10/18.
 */
public class CollectServiceImpl implements CollectService {
    CollectDao dao = (CollectDao) BeanFactory.getBean("collectdao");

    @Override
    public List<Collect> findAllCid() {
        return dao.findAllCid();
    }

    @Override
    public Product findProductByPid(int pid) {
        return dao.findProductByPid(pid);
    }

    @Override
    public void addCollect(Collect collect) {
        dao.addCollect(collect);
    }

    @Override
    public List<Collect> findCollectByUid(String uid) {
        return dao.findCollectByUid(uid);
    }

    @Override
    public List<Collect> findPartCid(int page) {
        return null;
    }


    @Override
    public int findCountCollect() {
        return dao.findCountCollect();
    }

    @Override
    public void deleCollectByPid(int pid) {
        dao.deleCollectByPid(pid);
    }

    @Override
    public void delAllCollect(String uid) {
        dao.delAllCollect(uid);
    }

}
