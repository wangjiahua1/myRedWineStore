package com.igeek.service;

import com.igeek.domain.RedWine;

import java.util.List;

/**
 * Created by LENOVO on 2019/10/21.
 */
public interface RedWineService {
    public List<RedWine> getallredwine();

    public int getallredwineNum();

    public List<RedWine> getCurrentPage(int currentpage);
}
