package com.igeek.dao.imp;

import com.igeek.dao.CommentDao;
import com.igeek.domain.Comment;
import com.igeek.utils.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class CommentDaoImpl implements CommentDao {
    QueryRunner qr =new QueryRunner(JDBCTools.getDataSource());
    String sql="";
    @Override
    public void addcomment(Comment c) {
        sql="insert into comment values(null,?,?,?,?,now(),'',?)";
        try {
            qr.update(sql,c.getName(),c.getEmail(),c.getDesc(),c.getPid(),c.getUid());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Comment> findcomment(int pid) {
        sql="select * from comment  where pid=? order by time desc limit 0,5";
        try {
            return qr.query(sql,new BeanListHandler<>(Comment.class),pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
