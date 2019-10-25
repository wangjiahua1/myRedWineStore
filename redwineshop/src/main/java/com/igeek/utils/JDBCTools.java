package com.igeek.utils;

import com.alibaba.druid.pool.DruidDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

/**
 * @author jerryHe
 * @create 2019-08-26 10:17
 */
public class JDBCTools {

    private static DruidDataSource dataSource = new DruidDataSource();

    //1.获取连接池
    public static DataSource getDataSource(){
        init();
        return  dataSource;
    }


    //2.获取连接
    public static Connection getConnection(){
        init();
        try {
            return  dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    //3.关闭连接
    public static void closeConn(Connection conn, Statement st){
        try {
            if(conn!=null){
                if(st!=null){
                    st.close();
                }
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    //加载配置文件
    public static void init(){
        try {
            //1.从属性文件中获取连接信息
            Properties ps = new Properties();
            //D:\java82\idea_web_workspaces\day02login\out\artifacts\day02login_war_exploded\WEB-INF\classes
            //当前项目被部署后db.properties 文件与 JDBCTools的字节码文件在同一个目录,在classes 目录下
            //以后项目中的配置文件一般放在src目录下,被部署之后,到classes文件夹下
            //如何找到被部署的项目路径
            //1.CATALINA_BASE:   "C:\Users\Administrator\.IntelliJIdea2018.1\system\tomcat\index_jsp_day02login
            //2.conf\Catalina\localhost\ROOT.xml
            //3.docBase="D:\java82\idea_web_workspaces\day02login\out\artifacts\day02login_war_exploded"
            //4.WEB-INF\classes
            ps.load(JDBCTools.class.getClassLoader().getResourceAsStream("db.properties"));
            System.out.println(ps.getProperty("driverClassName"));


            dataSource.setDriverClassName(ps.getProperty("driverClassName"));
            dataSource.setUrl(ps.getProperty("url"));
            dataSource.setUsername(ps.getProperty("username"));
            dataSource.setPassword(ps.getProperty("password"));
            dataSource.setMaxActive(Integer.parseInt(ps.getProperty("maxActive")));
            dataSource.setMaxWait(Integer.parseInt(ps.getProperty("maxWait")));
            dataSource.setInitialSize(Integer.parseInt(ps.getProperty("initialSize")));
        }catch (Exception e){
            e.printStackTrace();
        }

    }

}
