package com.igeek.dao.impl;

import com.igeek.dao.CommentDao;
import com.igeek.domain.Comment;
import com.igeek.domain.Product;
import com.igeek.untilts.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by 卢翔 on 2019/10/22.
 */
public class CommentDaoImpl implements CommentDao {
    QueryRunner qr=new QueryRunner(JDBCTools.getDataSource());
    String sql="";
    @Override
    public List<Comment> findAllComment() {
        sql="select * from comment order by time desc";
        List<Comment> comments=null;
        try {
            comments=qr.query(sql,new BeanListHandler<>(Comment.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comments;
    }

    @Override
    public Product findProductByPid(int pid) {
        sql="select * from product where pid = ?";
        Product product=null;
        try {
            product=qr.query(sql,new BeanHandler<>(Product.class),pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    @Override
    public void delCommentByMMid(String mmid) {
        sql="delete from comment where mmid = ?";
        try {
            qr.update(sql,mmid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Comment> findCommentByPage(int pageNo, int pageSize) {
        int offset=(pageNo-1)*pageSize;
        sql="select * from comment order by time desc limit ? , ?";
        List<Comment> comments=null;
        try {
            comments=qr.query(sql,new BeanListHandler<>(Comment.class),offset,pageSize);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comments;
    }

    @Override
    public int countCommentPage() {
        sql="select count(*) from comment";
        Long count=0L;
        try {
            count=qr.query(sql,new ScalarHandler<Long>());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Integer.parseInt(count+"");
    }
}