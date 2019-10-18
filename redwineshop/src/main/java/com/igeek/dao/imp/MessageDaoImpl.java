package com.igeek.dao.imp;

import com.igeek.dao.MessageDao;
import com.igeek.domain.Message;
import com.igeek.utils.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by LENOVO on 2019/10/17.
 */
public class MessageDaoImpl implements MessageDao {
    QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
    String sql = "";

    @Override
    public List<Message> findFiveMessage() {
        sql = "select * from message order by time desc limit 0,5;";
        try {
            return qr.query(sql,new BeanListHandler<>(Message.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void addMessage(Message m) {
        sql = "insert into message values (null,?,now(),?,?);";
        try {
            qr.update(sql,m.getName(),m.getEmail(),m.getMessage());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
