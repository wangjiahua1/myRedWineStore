package com.igeek.service.imp;

import com.igeek.dao.CommentDao;
import com.igeek.domain.Comment;
import com.igeek.service.CommentService;
import com.igeek.utils.BeanFactory;

import java.util.List;

public class CommentServiceImpl implements CommentService {
    CommentDao cd = (CommentDao) BeanFactory.getBean("commentdao");

    @Override
    public void addcomment(Comment c) {
        cd.addcomment(c);
    }

    @Override
    public List<Comment> findcomment(int pid) {
        return cd.findcomment(pid);
    }
}
