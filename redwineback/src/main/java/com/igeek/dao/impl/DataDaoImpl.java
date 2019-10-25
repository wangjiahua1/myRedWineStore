package com.igeek.dao.impl;

import com.igeek.dao.DataDao;
import com.igeek.untilts.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.Map;

/**
 * Created by LENOVO on 2019/10/21.
 */
public class DataDaoImpl implements DataDao {
    QueryRunner qr = new QueryRunner(JDBCTools.getDataSource());
    String sql = "";
//    select sum(quantity) from cart where state = 1 and date = date(now()) and pid = 8;
    @Override
    public Long findDate(int pid) {
        sql = "select sum(quantity) as num from cart where state = 1 and date = date(now()) and pid = ?";
       // System.out.println("pid:"+pid);
        try {
            Map<String,Object> map = qr.query(sql,new MapHandler(),pid);
           // System.out.println(map);
            Object o = map.get("num");
           if(o == null){
               return  0L;
           }else{
               return ((BigDecimal)o).longValue();
           }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0L;
    }

    @Override
    public String findPnameByPid(int pid) {
        sql = "select pname from product where pid = ?;";
        try {
            return qr.query(sql,new ScalarHandler<String>(),pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
