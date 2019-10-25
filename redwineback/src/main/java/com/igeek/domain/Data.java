package com.igeek.domain;

/**
 * Created by LENOVO on 2019/10/21.
 */
public class Data {
    private String pname;
    private Long count;

    @Override
    public String toString() {
        return "Data{" +
                "pname='" + pname + '\'' +
                ", count=" + count +
                '}';
    }

    public Data(String pname, Long count) {
        this.pname = pname;
        this.count = count;
    }

    public Data() {
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }
}
