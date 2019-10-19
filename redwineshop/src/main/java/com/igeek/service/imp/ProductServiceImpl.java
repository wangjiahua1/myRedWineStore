package com.igeek.service.imp;

import com.igeek.dao.ProductDao;
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


}
