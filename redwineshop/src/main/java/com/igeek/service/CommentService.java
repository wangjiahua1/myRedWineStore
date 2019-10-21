package com.igeek.service;

import com.igeek.domain.Comment;

import java.util.List;

public interface CommentService {
    void addcomment(Comment c);

    List<Comment> findcomment(int pid);
}
