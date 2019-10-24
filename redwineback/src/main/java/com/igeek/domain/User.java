package com.igeek.domain;

import java.util.Date;

public class User {
    private String uid;
    private String uname;
    private String email;
    private String sex;
    private String  MemberOrder;
    private String station;
    private Date lastlogin;
    private String password;
    private String telephone;
    private Date birthday;
    private String area;

    public User(String uname,  String memberOrder,String sex, String telephone, Date birthday, String area) {
        this.uname = uname;
        this.sex = sex;
        MemberOrder = memberOrder;
        this.telephone = telephone;
        this.birthday = birthday;
        this.area = area;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public User() {
    }


    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getMemberOrder() {
        return MemberOrder;
    }

    public void setMemberOrder(String memberOrder) {
        MemberOrder = memberOrder;
    }

    public String getStation() {
        return station;
    }

    public void setStation(String station) {
        this.station = station;
    }

    public Date getLastlogin() {
        return lastlogin;
    }

    public void setLastlogin(Date lastlogin) {
        this.lastlogin = lastlogin;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid='" + uid + '\'' +
                ", uname='" + uname + '\'' +
                ", email='" + email + '\'' +
                ", sex='" + sex + '\'' +
                ", MemberOrder='" + MemberOrder + '\'' +
                ", station='" + station + '\'' +
                ", lastlogin=" + lastlogin +
                ", password='" + password + '\'' +
                '}';
    }
}
