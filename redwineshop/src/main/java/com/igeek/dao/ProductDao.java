package com.igeek.dao;

import com.igeek.domain.Product;
import java.util.List;

public interface ProductDao {
    public int getCountRedWine();
    public List<Product> getallredwine(int sizePage);
    public List<Product> getCurrentPage(int currentpage);

    List<Product> gethotRedwine();


    List<Product> getChoosePrice(int price1, int price2);

    List<Product> getChooseColor(String color);
}
