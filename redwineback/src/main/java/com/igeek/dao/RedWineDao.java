package com.igeek.dao;

import com.igeek.domain.RedWine;
import com.igeek.untilts.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class RedWineDao {
    QueryRunner qr=new QueryRunner(JDBCTools.getDataSource());
    public List<RedWine> getallredwine() {
        String sql="select * from product limit 0,10";
        try {
            return qr.query(sql,new BeanListHandler<>(RedWine.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public int getallredwineNum() {
        String sql="select count(*) from product";
        try {
            return Integer.parseInt(qr.query(sql,new ScalarHandler<Long>())+"");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<RedWine> getCurrentPage(int currentpage) {
        String sql="select * from product limit ?,?";
        try {
            return qr.query(sql,new BeanListHandler<>(RedWine.class),10*(currentpage-1),10);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
