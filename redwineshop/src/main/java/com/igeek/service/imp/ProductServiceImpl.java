package com.igeek.service.imp;

import com.igeek.dao.ProductDao;
import com.igeek.domain.Cart;
import com.igeek.domain.Product;
import com.igeek.service.ProductService;
import com.igeek.utils.BeanFactory;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    ProductDao pd= (ProductDao) BeanFactory.getBean("myredwinedao");
    public int getCountRedWine() {
        return pd.getCountRedWine();
    }

    public List<Product> getallredwine(int sizePage) {
        return pd.getallredwine(sizePage);
    }

    public List<Product> getCurrentPage(int currentpage) {
        return pd.getCurrentPage(currentpage);
    }

    @Override
    public List<Product> gethotRedwine() {
        return pd.gethotRedwine();
    }

    @Override
    public List<Product> getChoosePrice(int price1, int price2, int currentpage) {
        return pd.getChoosePrice(price1,price2,currentpage);
    }

    @Override
    public List<Product> getChooseColor(String color) {
        return pd.getChooseColor(color);
    }

    @Override
    public Product getcart(String pid) {
        return pd.getcart(pid);
    }

    @Override
    public void addcart(Cart cart) {
         pd.addcart(cart);
    }

    @Override
    public List<Cart> findallcart(String uid) {
        return pd.findallcart(uid);
    }

    @Override
    public Product getRedWineById(int id) {
        return pd.getRedWineById(id);
    }
}
