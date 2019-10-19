package com.igeek.service;

import com.igeek.domain.Message;

import java.util.List;

/**
 * Created by LENOVO on 2019/10/17.
 */
public interface MessageService {
    List<Message> findFiveMessage();

    void addMessage(Message m);
}
