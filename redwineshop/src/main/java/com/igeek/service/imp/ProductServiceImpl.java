package com.igeek.service.imp;

import com.igeek.dao.ProductDao;
import com.igeek.domain.Cart;
import com.igeek.domain.Page;
import com.igeek.domain.Product;
import com.igeek.service.ProductService;
import com.igeek.utils.BeanFactory;

import java.util.List;

public  class ProductServiceImpl implements ProductService {
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
    //分页
    @Override
    public Page<Product> getPage(int currentpage, int i) {
        Page<Product> page=new Page<>();
        //设置总数
        page.setTotalRecord(pd.getCountRedWine());
        page.setList(pd.getCurrentPage(currentpage));
        return page;
    }

    @Override
    public Page<Product> getRedWineByCId(String cid, int currentpage) {
        Page<Product> page=new Page<>();
        //设置总数
        page.setTotalRecord(pd.getCountRedWine());
        page.setList(pd.getRedWineByCId(cid,currentpage));
        return page;
    }

    @Override
    public Page<Product> getRedWineByPrice(int price1, int price2, int currentpage) {
        Page<Product> page=new Page<>();
        //设置总数
        page.setTotalRecord(pd.getCountRedWineByPrice(price1,price2));
        page.setList(pd.getChoosePrice(price1,price2,currentpage));
        return page;
    }


}

