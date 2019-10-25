package com.igeek.dao.imp;

import com.igeek.dao.ProductDao;
import com.igeek.domain.Cart;
import com.igeek.domain.Product;
import com.igeek.utils.JDBCTools;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;
import java.util.logging.ConsoleHandler;

public class ProductDaoImpl implements ProductDao {
    QueryRunner qr=new QueryRunner(JDBCTools.getDataSource());
    public int getCountRedWine() {
        String sql = "select count(*) from product";
        try {
            return Integer.parseInt(qr.query(sql, new ScalarHandler<Long>()) + "");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<Product> getallredwine(int sizePage) {
        String sql="select * from product limit 0,?";
        try {
            return qr.query(sql,new BeanListHandler<>(Product.class),sizePage);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Product> getCurrentPage(int currentpage) {
        String sql="select * from product limit ?,?";
        try {
            return qr.query(sql,new BeanListHandler<>(Product.class),9*(currentpage-1),9);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Product> gethotRedwine() {
        String sql="select * from product where ishot='new' limit 0,5";
        try {
            return qr.query(sql,new BeanListHandler<>(Product.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Product> getChoosePrice(int price1, int price2, int currentpage) {
        String sql="select * from product where price>=? and price<=? limit ?,9";
        try {
            return qr.query(sql,new BeanListHandler<>(Product.class),price1,price2,currentpage);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Product> getChooseColor(String color) {
        String sql="select * from product where color=?";
        try {
            return qr.query(sql,new BeanListHandler<>(Product.class),color);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Product getcart(String pid) {
        String sql="select * from product where pid= ?";
        try {
            return qr.query(sql,new BeanHandler<>(Product.class),pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void addcart(Cart cart) {
     /*   String sqlsel="select * from cart where "*/
        String sql="insert into cart  values(?,?,?,?,?,?,?,?,?)";
        try {
            qr.update(sql,null,cart.getUid(),cart.getPid(),cart.getPname(),cart.getPrice(),cart.getPimage(),cart.getQuantity(),cart.getTotal(),0);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Cart> findallcart(String uid) {
        String sql="select * from cart where uid=? and state=0";
        try {
            return qr.query(sql,new BeanListHandler<>(Cart.class),uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int getcartid(String uid, int pid) {
        String sql="select quantity from cart where uid=? and pid=?";
        try {
            return qr.query(sql,new ScalarHandler<Long>(),uid,pid)==null?0:Integer.parseInt(qr.query(sql,new ScalarHandler<Long>(),uid,pid)+"");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public void addcartpast(Cart cart) {
        String sql="update cart  set quantity=?, total=? where uid=? and pid=?";
        try {
            qr.update(sql,cart.getQuantity(),cart.getTotal(),cart.getUid(),cart.getPid());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Product getRedWineById(int id) {
        String sql="select * from product where pid=?";
        try {
            return qr.query(sql,new BeanHandler<>(Product.class),id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Product> findproduct(String  cid) {
        String sql="select * from product where cid=? limit 0,4";

        try {

            return qr.query(sql,new BeanListHandler<>(Product.class),cid);
        } catch (SQLException e) {

            e.printStackTrace();
        }
        System.out.println(4);

        return null;
    }

    @Override
    public List<Product> findproductbyIsnew(String aNew) {
        System.out.println(aNew);
        String sql="select * from product where ishot=? limit 0,4;";
        try {
            return qr.query(sql,new BeanListHandler<>(Product.class),aNew);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Product> findproductbyIshot(String s) {
        String sql="select * from product where ishot=? limit 0,4;";
        try {
            return qr.query(sql,new BeanListHandler<>(Product.class),s);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Product> findproductbyIsbhot(String hot) {
        String sql="select * from product where ishot=? limit 0,4;";
        try {
            return qr.query(sql,new BeanListHandler<>(Product.class),hot);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Product findbyPidproduct(int pid) {
        String sql="select * from product where pid=?";
        try {
            return qr.query(sql,new BeanHandler<>(Product.class),pid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void addcartpast(Cart cart) {
        String sql="update cart  set quantity=?, total=? where uid=? and pid=?";
        try {
            qr.update(sql,cart.getQuantity(),cart.getTotal(),cart.getUid(),cart.getPid());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public int getcartid(String uid, int pid) {
        String sql="select quantity from cart where uid=? and pid=?";
        try {
            return qr.query(sql,new ScalarHandler<Long>(),uid,pid)==null?0:Integer.parseInt(qr.query(sql,new ScalarHandler<Long>(),uid,pid)+"");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }


}
