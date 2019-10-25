package com.igeek.dao.imp;

import com.igeek.dao.LettersDao;
import com.igeek.domain.Letter;
import com.igeek.untilts.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class LettersDaoImpl implements LettersDao {
    QueryRunner qr =new QueryRunner(JDBCTools.getDataSource());
    String sql="";


    @Override
    public List<Letter> findALLletters() {
        sql ="select * from email";
        try {
            return qr.query(sql,new BeanListHandler<>(Letter.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void changeLetterState(int eid) {
        sql ="update email set state =1 where eid=?";
        try {
            qr.update(sql,eid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteLetter(int eid) {
        sql ="delete from email where eid=?";
        try {
            qr.update(sql,eid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Letter findContent(int eid) {
        sql="select * from email where eid=?";
        try {
            return qr.query(sql,new BeanHandler<>(Letter.class),eid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
