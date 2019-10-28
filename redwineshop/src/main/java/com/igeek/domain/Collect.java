package com.igeek.domain;

/**
 * Created by LENOVO on 2019/10/18.
 */
public class Collect {
    private int collectid;
    private int pid;
    private int number;
    private String uid;

    public Collect(int collectid, int pid, int number) {
        this.collectid = collectid;
        this.pid = pid;
        this.number = number;
    }

    public Collect(int pid, int number, String uid) {
        this.pid = pid;
        this.number = number;
        this.uid = uid;
    }


    public Collect() {
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public int getCollectid() {
        return collectid;
    }

    public void setCollectid(int collectid) {
        this.collectid = collectid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Override
    public String toString() {
        return "Collect{" +
                "collectid=" + collectid +
                ", pid=" + pid +
                ", number=" + number +
                ", uid='" + uid + '\'' +
                '}';
    }
}
