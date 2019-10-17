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
}
