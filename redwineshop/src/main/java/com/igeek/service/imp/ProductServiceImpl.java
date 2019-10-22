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
    public int getcartid(String uid, int pid) {
        return pd.getcartid(uid,pid);
    }

    @Override
    public void addcartpast(Cart cart) {
        pd.addcartpast(cart);
    }

    @Override
    public Product getRedWineById(int id) {
        return pd.getRedWineById(id);
    }

    @Override
    public List<Product> findproduct(String cid) {
        return pd.findproduct(cid);
    }

    @Override
    public List<Product> findproductbyIsnew(String aNew) {
        System.out.println(aNew);
        return pd.findproductbyIsnew(aNew);
    }

    @Override
    public List<Product> findproductbyIshot(String s) {
        return pd.findproductbyIshot(s);
    }

    @Override
    public List<Product> findproductbyIsbhot(String hot) {
        return pd.findproductbyIsbhot(hot);
    }

    @Override
    public Product findbyPidproduct(int pid) {
        return pd.findbyPidproduct(pid);
    }

    @Override
    public List<Product> fincproduct() {
        return pd.findcproduct();
    }

    @Override
    public List<Product> findproductbycolor(String color) {
        return pd.findproductbycolor(color);
    }


}
