package com.igeek.service.impl;

import com.igeek.dao.impl.RedWineDaoImpl;
import com.igeek.domain.Brand;
import com.igeek.domain.Category;
import com.igeek.domain.Page;
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
    public Page<RedWine> getCurrentPage(int currentpage) {
        Page<RedWine> page=new Page<RedWine>();
        page.setTotalRecord(rwd.getallredwineNum());
        page.setList(rwd.getCurrentPage(currentpage));
        return page;
    }

    @Override
    public RedWine getredwinebypid(int pid) {
        return rwd.getredwinebypid(pid);
    }

    @Override
    public List<Brand> getredwineBrand() {
        return rwd.getredwineBrand();
    }

    @Override
    public List<Category> getredwineCategory() {
        return rwd.getredwineCategory();
    }

    @Override
    public String getredwineCategoryByname(String category) {
        return rwd.getredwineCategoryByname(category);
    }

    @Override
    public boolean updateRedwine(RedWine redWine) {
        return rwd.updateRedwine(redWine);
    }

    @Override
    public boolean addRedwine(RedWine redWine) {
        return rwd.addRedwine(redWine);
    }

    @Override
    public boolean deleteRedWineByPid(String pid) {
        return rwd.deleteRedWineByPid(pid);
    }

    @Override
    public RedWine findRedWineByPid(String pid) {
        return rwd.findRedWineByPid(pid);
    }
}
