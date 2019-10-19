package com.igeek.dao.imp;

import com.igeek.dao.EmailDao;
import com.igeek.domain.Email;
import com.igeek.utils.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;

/**
 * Created by LENOVO on 2019/10/18.
 */
public class EmailDaoImpl implements EmailDao {
    QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
    String sql = "";
    @Override
    public void addEmail(Email e) {
        sql = "insert into email values (null,?,?,?,?);";
        try {
            qr.update(sql,e.getEname(),e.getEmail(),e.getEsubject(),e.getEmessage());
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
    }
}
