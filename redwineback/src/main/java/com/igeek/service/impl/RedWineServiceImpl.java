package com.igeek.service.impl;

import com.igeek.dao.impl.RedWineDaoImpl;
import com.igeek.domain.RedWine;
import com.igeek.service.RedWineService;
import com.igeek.untilts.BeanFactory;

import java.util.List;

public class RedWineServiceImpl implements RedWineService {
    RedWineDaoImpl rwd= (RedWineDaoImpl) BeanFactory.getBean("myredwinedao");
    @Override
    public List<RedWine> getallredwine() {
        return rwd.getallredwine();
    }

    @Override
    public int getallredwineNum() {
        return rwd.getallredwineNum();
    }

    @Override
    public List<RedWine> getCurrentPage(int currentpage) {
        return rwd.getCurrentPage(currentpage);
    }
}
