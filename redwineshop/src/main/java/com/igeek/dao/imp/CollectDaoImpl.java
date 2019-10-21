package com.igeek.dao.imp;

import com.igeek.dao.CollectDao;
import com.igeek.domain.Collect;
import com.igeek.domain.Product;
import com.igeek.utils.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

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

    @Override
    public void addCollect(Collect collect) {
        sql="insert into collect values (?,?,?,?)";
        try {
            qr.update(sql,null,collect.getPid(),collect.getNumber(),collect.getUid());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Collect> findCollectByUid(String uid) {
        String sql="select * from collect where uid = ?";
        List<Collect> collects=null;
        try {
            collects=qr.query(sql,new BeanListHandler<>(Collect.class),uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return collects;
    }

    @Override
    public List<Collect> findPartCid(int start, int len , String uid) {
        sql = "select * from collect where uid = ? limit ?,?;";
        try {
            return qr.query(sql,new BeanListHandler<>(Collect.class),uid,start,len);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int findCountCollect(String uid) {
        sql = "select count(*) from collect where uid = ?;";
        try {
            return Integer.valueOf(String.valueOf(qr.query(sql,new ScalarHandler<Long>(),uid)));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Integer.parseInt(null);
    }

    @Override
    public void deleCollectByPid(int pid) {
        sql="delete from collect where pid = ?";
        try {
            qr.update(sql,pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delAllCollect(String uid) {
        sql="delete from collect where uid = ?";
        try {
            qr.update(sql,uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delCollect(String uid, String pid) {
        sql = "delete from collect where uid = ? and pid = ?;";
        try {
            qr.update(sql,uid,pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
