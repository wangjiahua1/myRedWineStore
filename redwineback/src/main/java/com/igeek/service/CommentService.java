package com.igeek.service;

import com.igeek.domain.Comment;

import java.util.List;

/**
 * Created by 卢翔 on 2019/10/22.
 */
public interface CommentService {

    List<Comment> findAllComment();

    void delCommentByMMid(String mmid);

    List<Comment> findCommentByPage(int pageNo, int pageSize);

    int countCommentPage();
}
