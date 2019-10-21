package com.igeek.service.imp;

import com.igeek.dao.BlogDao;
import com.igeek.domain.Blog;
import com.igeek.service.BlogService;
import com.igeek.utils.BeanFactory;

import java.util.List;

public class BlogServiceImpl implements BlogService {
    BlogDao bd = (BlogDao) BeanFactory.getBean("blogdao");
    @Override
    public Blog findblog(String bid) {
        return bd.findblog(bid);
    }
}
