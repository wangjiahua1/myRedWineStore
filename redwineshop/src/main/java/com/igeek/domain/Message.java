package com.igeek.domain;

import java.util.Date;

/**
 * Created by LENOVO on 2019/10/17.
 */
public class Message {
    private int mid;
    private String name;
    private Date time;
    private String email;
    private String message;

    public Message() {
    }

    public Message(String name, String email, String message) {
        this.name = name;
        this.email = email;
        this.message = message;
    }

    public Message(int mid, String name, Date time, String email, String message) {
        this.mid = mid;
        this.name = name;
        this.time = time;
        this.email = email;
        this.message = message;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
