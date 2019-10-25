package com.igeek.domain;

import java.util.Date;

public class Comment {
    private  int mmid;
    private String name;
    private String email;
    private String desc;
    private  int pid;
    private Date time;
    String title;
    String uid;

    public Comment() {
    }

    public Comment(String name, String email, String desc, int pid) {
        this.name = name;
        this.email = email;
        this.desc = desc;
        this.pid = pid;
    }

    public int getMmid() {
        return mmid;
    }

    public void setMmid(int mmid) {
        this.mmid = mmid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "mmid=" + mmid +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", desc='" + desc + '\'' +
                ", pid=" + pid +
                ", time=" + time +
                ", title='" + title + '\'' +
                ", uid='" + uid + '\'' +
                '}';
    }
}
