package com.igeek.service.imp;

import com.igeek.dao.imp.RedWineDaoImpl;
import com.igeek.domain.RedWine;

import java.util.List;

public class RedWineServiceImpl  {
    RedWineDaoImpl rwd=new RedWineDaoImpl();
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
