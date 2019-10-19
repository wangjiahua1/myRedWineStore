package com.igeek.service.imp;

import com.igeek.dao.MessageDao;
import com.igeek.domain.Message;
import com.igeek.service.MessageService;
import com.igeek.utils.BeanFactory;

import java.util.List;

/**
 * Created by LENOVO on 2019/10/17.
 */
public class MessageServiceImpl implements MessageService {
    MessageDao dao = (MessageDao) BeanFactory.getBean("messagedao");
    @Override
    public List<Message> findFiveMessage() {
        return dao.findFiveMessage();
    }

    @Override
    public void addMessage(Message m) {
        dao.addMessage(m);
    }
}
