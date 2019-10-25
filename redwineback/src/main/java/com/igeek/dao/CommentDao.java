package com.igeek.dao;

import com.igeek.domain.Comment;
import com.igeek.domain.Product;

import java.util.List;

/**
 * Created by 卢翔 on 2019/10/22.
 */
public interface CommentDao {
    List<Comment> findAllComment();

    Product findProductByPid(int pid);

    void delCommentByMMid(String mmid);

    List<Comment> findCommentByPage(int pageNo, int pageSize);

    int countCommentPage();
}
