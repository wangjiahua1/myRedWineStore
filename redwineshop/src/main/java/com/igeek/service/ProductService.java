package com.igeek.service;


import com.igeek.domain.Product;

import java.util.List;

public interface ProductService {

    public int getCountRedWine();

    public List<Product> getallredwine(int sizePage);

    public List<Product> getCurrentPage(int currentpage);


    List<Product> findproduct(String cid);

    List<Product> findproductbyIsnew(String aNew);

    List<Product> findproductbyIshot(String s);

    List<Product> findproductbyIsbhot(String hot);

    Product findbyPidproduct(int pid);
}
