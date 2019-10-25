package com.igeek.service;

import com.igeek.dao.DataDao;
import com.igeek.domain.Data;
import com.igeek.untilts.BeanFactory;

import java.util.List;

/**
 * Created by LENOVO on 2019/10/21.
 */
public interface DataService {


    List<Data> findMostDate();
}
