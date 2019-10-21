package com.igeek.service;

import com.igeek.domain.Collect;
import com.igeek.domain.Product;

import java.util.List;

/**
 * Created by LENOVO on 2019/10/18.
 */
public interface CollectService {
    List<Collect> findAllCid();


    Product findProductByPid(int pid);

    void addCollect(Collect collect);

    List<Collect> findCollectByUid(String uid);

    List<Collect> findPartCid(int page , String uid);

    int findCountCollect(String uid);

    void delCollect(String uid, String pid);
}
