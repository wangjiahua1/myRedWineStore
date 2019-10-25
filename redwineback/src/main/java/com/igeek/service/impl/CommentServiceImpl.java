package com.igeek.service.impl;

import com.igeek.dao.CommentDao;
import com.igeek.domain.Comment;
import com.igeek.domain.Product;
import com.igeek.service.CommentService;
import com.igeek.untilts.BeanFactory;

import java.util.List;

/**
 * Created by 卢翔 on 2019/10/22.
 */
public class CommentServiceImpl implements CommentService {
    CommentDao dao= (CommentDao) BeanFactory.getBean("commentDao");

    @Override
    public List<Comment> findAllComment() {
        List<Comment> comments=dao.findAllComment();
        for(Comment comment:comments){
            Product product=dao.findProductByPid(comment.getPid());
            comment.setProduct(product);
        }
        return  comments;
    }

    @Override
    public void delCommentByMMid(String mmid) {
        dao.delCommentByMMid(mmid);
    }

    @Override
    public List<Comment> findCommentByPage(int pageNo, int pageSize) {
        List<Comment> comments=dao.findCommentByPage(pageNo,pageSize);
        for(Comment comment:comments){
            Product product=dao.findProductByPid(comment.getPid());
            comment.setProduct(product);
        }
        return  comments;
    }

    @Override
    public int countCommentPage() {
        return dao.countCommentPage();
    }
}