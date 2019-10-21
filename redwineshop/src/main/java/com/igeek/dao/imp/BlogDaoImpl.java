package com.igeek.dao.imp;

import com.igeek.dao.BlogDao;
import com.igeek.domain.Blog;
import com.igeek.utils.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class BlogDaoImpl implements BlogDao {
    QueryRunner qr =new QueryRunner(JDBCTools.getDataSource());
    String sql="";
    @Override
    public Blog findblog(String bid) {
        sql="select * from blog where bid=?";
        try {
            return qr.query(sql,new BeanHandler<>(Blog.class),bid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
