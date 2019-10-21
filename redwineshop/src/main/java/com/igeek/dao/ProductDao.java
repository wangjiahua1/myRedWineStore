package com.igeek.dao;

import com.igeek.domain.Cart;
import com.igeek.domain.Product;
import java.util.List;

public interface ProductDao {
    public int getCountRedWine();
    public List<Product> getallredwine(int sizePage);
    public List<Product> getCurrentPage(int currentpage);

    List<Product> gethotRedwine();


    List<Product> getChoosePrice(int price1, int price2, int currentpage);

    List<Product> getChooseColor(String color);

    Product getcart(String pid);

    void addcart(Cart cart);

    List<Cart> findallcart(String uid);

    Product getRedWineById(int id);
    List<Product> findproduct(String cid);

    List<Product> findproductbyIsnew(String aNew);

    List<Product> findproductbyIshot(String s);

    List<Product> findproductbyIsbhot(String hot);

    Product findbyPidproduct(int pid);

    List<Product> findcproduct();

    List<Product> findproductbycolor(String color);
}
