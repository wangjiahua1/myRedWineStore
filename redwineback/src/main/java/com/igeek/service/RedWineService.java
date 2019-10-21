package com.igeek.service;

import com.igeek.dao.RedWineDao;
import com.igeek.domain.RedWine;

import java.util.List;

public class RedWineService {
    RedWineDao rwd=new RedWineDao();
    public List<RedWine> getallredwine() {
        return rwd.getallredwine();
    }

    public int getallredwineNum() {
        return rwd.getallredwineNum();
    }

    public List<RedWine> getCurrentPage(int currentpage) {
        return rwd.getCurrentPage(currentpage);
    }
}
