package com.igeek.dao;

import com.igeek.domain.Brand;
import com.igeek.domain.Category;
import com.igeek.domain.RedWine;

import java.util.List;

/**
 * Created by LENOVO on 2019/10/21.
 */
public interface RedWineDao {
    public List<RedWine> getallredwine();

    public int getallredwineNum();

    public List<RedWine> getCurrentPage(int currentpage);
    public RedWine getredwinebypid(int pid);

    List<Brand> getredwineBrand();

    List<Category> getredwineCategory();

    String getredwineCategoryByname(String category);

    boolean updateRedwine(RedWine redWine);

    boolean addRedwine(RedWine redWine);

    boolean deleteRedWineByPid(String pid);

    RedWine findRedWineByPid(String pid);
}
