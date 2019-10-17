package com.igeek.domain;

/**
 * @author jerryHe
 * @create 2019-10-12 9:02
 */
public class OrderItem {
    private String itemid;
    private int count;//购买的数量
    private double subtotal;//小计
    private Product product;//该项中购买的商品对象
    private Order order;//该订单项是属于哪个订单的
    //getter/setter方法省略

    public OrderItem() {
    }

    public OrderItem(String itemid, int count, double subtotal, Product product, Order order) {
        this.itemid = itemid;
        this.count = count;
        this.subtotal = subtotal;
        this.product = product;
        this.order = order;
    }

    public String getItemid() {
        return itemid;
    }

    public void setItemid(String itemid) {
        this.itemid = itemid;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    @Override
    public String toString() {
        return "OrderItem{" +
                "itemid='" + itemid + '\'' +
                ", count=" + count +
                ", subtotal=" + subtotal +
                ", product=" + product +
                ", order=" + order +
                '}';
    }
}

