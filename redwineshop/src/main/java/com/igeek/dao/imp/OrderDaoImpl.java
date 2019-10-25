package com.igeek.dao.imp;

import com.igeek.dao.OrderDao;
import com.igeek.utils.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;

public class OrderDaoImpl implements OrderDao{
    QueryRunner qr=new QueryRunner(JDBCTools.getDataSource());
    public void updatecartstate() {
        String sql="update cart  set state=? where state=0";
        try {
            qr.update(sql,1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
