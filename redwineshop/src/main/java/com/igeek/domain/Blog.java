package com.igeek.domain;

import java.util.Arrays;

public class Blog {
    private  int bid;
    private String bimage;
    public Blog() {
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getBimage() {
        return bimage;
    }

    public void setBimage(String bimage) {
        this.bimage = bimage;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "bid=" + bid +
                ", bimage='" + bimage + '\'' +
                '}';
    }
}
