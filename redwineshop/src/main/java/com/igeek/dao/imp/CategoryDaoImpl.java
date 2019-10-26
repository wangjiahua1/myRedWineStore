package com.igeek.dao.imp;

import com.igeek.dao.CategoryDao;
import com.igeek.domain.Category;
import com.igeek.utils.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class CategoryDaoImpl implements CategoryDao {
    QueryRunner qr =new QueryRunner(JDBCTools.getDataSource());
    String sql="";

    @Override
    public List<Category> findcategory() {
        sql="select * from category";
        try {
            return qr.query(sql,new BeanListHandler<>(Category.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  null;
    }

    @Override
    public String getCidByCname(String cat) {
        sql="select * from category where cname=?";
        try {
            Category query = qr.query(sql, new BeanHandler<>(Category.class), cat);
            return query.getCid();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
