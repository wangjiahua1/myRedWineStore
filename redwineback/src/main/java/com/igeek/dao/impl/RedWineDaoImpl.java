package com.igeek.dao.impl;

import com.igeek.dao.RedWineDao;
import com.igeek.domain.Brand;
import com.igeek.domain.Category;
import com.igeek.domain.RedWine;
import com.igeek.untilts.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.*;

import java.sql.SQLException;
import java.util.List;

public class RedWineDaoImpl implements RedWineDao {
    QueryRunner qr=new QueryRunner(JDBCTools.getDataSource());

    @Override
    public List<RedWine> getallredwine() {
        String sql="select * from product limit 0,10";
        try {
            return qr.query(sql,new BeanListHandler<>(RedWine.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int getallredwineNum() {
        String sql="select count(*) from product";
        try {
            return Integer.parseInt(qr.query(sql,new ScalarHandler<Long>())+"");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public List<RedWine> getCurrentPage(int currentpage) {
        String sql="select * from product limit ?,?";
        try {
            return qr.query(sql,new BeanListHandler<>(RedWine.class),10*(currentpage-1),10);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public RedWine getredwinebypid(int pid) {
        String sql="select * from product where pid=?";
        try {
            return qr.query(sql,new BeanHandler<>(RedWine.class),pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Brand> getredwineBrand() {
        String sql="select * from brand";
        try {
            return qr.query(sql, new BeanListHandler<>(Brand.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Category> getredwineCategory() {
        String sql="select * from category";
        try {
            return qr.query(sql,new BeanListHandler<>(Category.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public String getredwineCategoryByname(String category) {
        String sql="select * from category where cname=?";
        try {
            Category query = qr.query(sql, new BeanHandler<>(Category.class),category);
            return query.getCid();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean updateRedwine(RedWine redWine) {
        String sql="update product set pname=?,pimage=?,ishot=?,cid=?,brand=? where pid=?";
        try {
            int update = qr.update(sql, redWine.getPname(), redWine.getPimage(), redWine.getIshot(), redWine.getCid(), redWine.getBrand(), redWine.getPid());
            if (update>=0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean addRedwine(RedWine redWine) {
        String sql="insert into product values(?,?,?,?,?,?,?,?,?,?,?)";
        try {
            int update = qr.update(sql, null, redWine.getPname(), redWine.getPimage(), redWine.getPrice(),
                    redWine.getDescription(), redWine.getBrand(), redWine.getSize(),
                    redWine.getAvailability(), redWine.getColor(), redWine.getCid(),
                    redWine.getIshot());
            if (update>=0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteRedWineByPid(String pid) {
        String sql="delete from product where pid=?";
        try {
            int update = qr.update(sql, pid);
            if (update>0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public RedWine findRedWineByPid(String pid) {
        String sql="select * from product where pid=?";
        try {
            return qr.query(sql,new BeanHandler<>(RedWine.class),pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
