package com.igeek.domain;

/**
 * Created by LENOVO on 2019/10/18.
 */
public class MyCollect {
    private int collectid;
    private int number;
    private Product product;
    private int total;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public MyCollect(int collectid, int number, Product product) {
        this.collectid = collectid;
        this.number = number;
        this.product = product;
    }

    public MyCollect() {
    }

    public int getCollectid() {
        return collectid;
    }

    public void setCollectid(int collectid) {
        this.collectid = collectid;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
