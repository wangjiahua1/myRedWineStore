package com.igeek.dao;

import com.igeek.domain.Category;

import java.util.List;

public interface CategoryDao {
    List<Category> findcategory();

    String getCidByCname(String cat);
}
