package com.igeek.domain;

/**
 * Created by LENOVO on 2019/10/18.
 */
public class Collect {
    private int collectid;
    private int pid;
    private String uid;

    public Collect(int collectid, int pid, String uid) {
        this.collectid = collectid;
        this.pid = pid;
        this.uid = uid;
    }

    public Collect() {
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

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
