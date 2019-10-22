package com.igeek.service;


import com.igeek.domain.Cart;
import com.igeek.domain.Product;

import java.util.List;

public interface ProductService {

    public int getCountRedWine();

    public List<Product> getallredwine(int sizePage);

    public List<Product> getCurrentPage(int currentpage);

    List<Product> gethotRedwine();

    List<Product> getChoosePrice(int price1, int price2);

    List<Product> getChooseColor(String color);

    Product getcart(String pid);

    void addcart(Cart cart);

    List<Cart> findallcart(String uid);

    int getcartid(String uid, int pid);

    void addcartpast(Cart cart);
}
