package com.igeek.domain;

public class Letter {
    private int eid;
    private String ename;
    private String email;
    private String esubject;
    private String emessage;
    private int state;

    public Letter() {
    }

    public Letter(int eid, String ename, String email, String esubject, String emessage, int state) {

        this.eid = eid;
        this.ename = ename;
        this.email = email;
        this.esubject = esubject;
        this.emessage = emessage;
        this.state = state;
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

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Letter{" +
                "eid=" + eid +
                ", ename='" + ename + '\'' +
                ", email='" + email + '\'' +
                ", esubject='" + esubject + '\'' +
                ", emessage='" + emessage + '\'' +
                ", state=" + state +
                '}';
    }
}
