package com.igeek.domain;

/**
 * Created by LENOVO on 2019/10/18.
 */
public class Email {
    private int eid;
    private String ename;
    private String email;
    private String esubject;
    private String emessage;

    @Override
    public String toString() {
        return "EmailServlet{" +
                "eid=" + eid +
                ", ename='" + ename + '\'' +
                ", email='" + email + '\'' +
                ", esubject='" + esubject + '\'' +
                ", emessage='" + emessage + '\'' +
                '}';
    }

    public Email(String ename, String email, String esubject, String emessage) {
        this.ename = ename;
        this.email = email;
        this.esubject = esubject;
        this.emessage = emessage;
    }

    public Email(int eid, String ename, String email, String esubject, String emessage) {
        this.eid = eid;
        this.ename = ename;
        this.email = email;
        this.esubject = esubject;
        this.emessage = emessage;
    }

    public Email() {
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEsubject() {
        return esubject;
    }

    public void setEsubject(String esubject) {
        this.esubject = esubject;
    }

    public String getEmessage() {
        return emessage;
    }

    public void setEmessage(String emessage) {
        this.emessage = emessage;
    }
}
