package com.igeek.service.imp;

import com.igeek.dao.EmailDao;
import com.igeek.domain.Email;
import com.igeek.service.EmailService;
import com.igeek.utils.BeanFactory;

/**
 * Created by LENOVO on 2019/10/18.
 */
public class EmailServiceImpl implements EmailService {
    EmailDao dao = (EmailDao) BeanFactory.getBean("emaildao");
    @Override
    public void addEmail(Email e) {
        dao.addEmail(e);
    }
}
