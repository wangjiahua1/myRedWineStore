package com.igeek.dao.imp;

import com.igeek.dao.ProductDao;
import com.igeek.domain.Product;
import com.igeek.utils.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;
import java.util.logging.ConsoleHandler;

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

    @Override
    public List<Product> findproduct(String  cid) {
        String sql="select * from product where cid=? limit 0,4";

        try {

            return qr.query(sql,new BeanListHandler<>(Product.class),cid);
        } catch (SQLException e) {

            e.printStackTrace();
        }
        System.out.println(4);

        return null;
    }

    @Override
    public List<Product> findproductbyIsnew(String aNew) {
        System.out.println(aNew);
        String sql="select * from product where ishot=? limit 0,4;";
        try {
            return qr.query(sql,new BeanListHandler<>(Product.class),aNew);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Product> findproductbyIshot(String s) {
        String sql="select * from product where ishot=? limit 0,4;";
        try {
            return qr.query(sql,new BeanListHandler<>(Product.class),s);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Product> findproductbyIsbhot(String hot) {
        String sql="select * from product where ishot=? limit 0,4;";
        try {
            return qr.query(sql,new BeanListHandler<>(Product.class),hot);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Product findbyPidproduct(int pid) {
        String sql="select * from product where pid=?";
        try {
            return qr.query(sql,new BeanHandler<>(Product.class),pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


}
