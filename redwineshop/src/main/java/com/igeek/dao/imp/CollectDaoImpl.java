package com.igeek.dao.imp;

import com.igeek.dao.CollectDao;
import com.igeek.domain.Collect;
import com.igeek.domain.Product;
import com.igeek.utils.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by LENOVO on 2019/10/18.
 */
public class CollectDaoImpl implements CollectDao {
    QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
    String sql = "";
    @Override
    public List<Collect> findAllCid() {
        sql = "select * from collect;";
        try {
            return qr.query(sql,new BeanListHandler<>(Collect.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Product findProductByPid(int pid) {
        sql = "select * from product where pid = ?;";
        try {
            return  qr.query(sql,new BeanHandler<>(Product.class),pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
