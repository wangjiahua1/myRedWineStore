package com.igeek.dao;

import com.igeek.domain.Comment;

import java.util.List;

public interface CommentDao {
    void addcomment(Comment c);

    List<Comment> findcomment(int pid);
}
