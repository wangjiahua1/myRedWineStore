package com.igeek.dao;

import com.igeek.domain.Collect;
import com.igeek.domain.Product;

import java.util.List;

/**
 * Created by LENOVO on 2019/10/18.
 */
public interface CollectDao {
    List<Collect> findAllCid();

    Product findProductByPid(int pid);

    void addCollect(Collect collect);

    List<Collect> findCollectByUid(String uid);
}
