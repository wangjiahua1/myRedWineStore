package com.igeek.dao.imp;

import com.igeek.dao.ProductDao;
import com.igeek.domain.Product;
import com.igeek.utils.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class ProductDaoImpl implements ProductDao {
    QueryRunner qr=new QueryRunner(JDBCTools.getDataSource());
    public int getCountRedWine() {
        String sql = "select count(*) from product";
        try {
            return Integer.parseInt(qr.query(sql, new ScalarHandler<Long>()) + "");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<Product> getallredwine(int sizePage) {
        String sql="select * from product limit 0,?";
        try {
            return qr.query(sql,new BeanListHandler<>(Product.class),sizePage);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Product> getCurrentPage(int currentpage) {
        String sql="select * from product limit ?,?";
        try {
            return qr.query(sql,new BeanListHandler<>(Product.class),9*(currentpage-1),9);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
