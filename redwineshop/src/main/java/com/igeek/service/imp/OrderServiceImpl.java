package com.igeek.service.imp;

import com.igeek.dao.OrderDao;
import com.igeek.dao.ProductDao;
import com.igeek.dao.imp.OrderDaoImpl;
import com.igeek.service.OrderService;
import com.igeek.utils.BeanFactory;

public class OrderServiceImpl implements OrderService {
    OrderDao orderDao=(OrderDao) BeanFactory.getBean("orderDao");
    @Override
    public void updatecartstate() {
        orderDao.updatecartstate();
    }
}
