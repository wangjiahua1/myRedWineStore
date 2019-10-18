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

}
