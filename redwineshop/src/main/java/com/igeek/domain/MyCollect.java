package com.igeek.domain;

/**
 * Created by LENOVO on 2019/10/18.
 */
public class MyCollect {
    private int collectid;
    private String uid;
    private Product product;

    public MyCollect(int collectid, String uid, Product product) {
        this.collectid = collectid;
        this.uid = uid;
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

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
