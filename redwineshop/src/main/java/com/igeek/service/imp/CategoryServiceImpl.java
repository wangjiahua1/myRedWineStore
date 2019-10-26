package com.igeek.service.imp;

import com.igeek.dao.CategoryDao;
import com.igeek.domain.Category;
import com.igeek.service.CategoryService;
import com.igeek.utils.BeanFactory;

import java.util.List;

public class CategoryServiceImpl  implements CategoryService {
    CategoryDao cd= (CategoryDao) BeanFactory.getBean("mycatedao");

    @Override
    public List<Category> findcategory() {
        return cd.findcategory();
    }

    @Override
    public String getCidByCname(String cat) {
        return cd.getCidByCname(cat);
    }
}
