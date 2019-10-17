package com.igeek.service;


import com.igeek.domain.Product;

import java.util.List;

public interface ProductService {

    public int getCountRedWine();

    public List<Product> getallredwine(int sizePage);

    public List<Product> getCurrentPage(int currentpage);
}
