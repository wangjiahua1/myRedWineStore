package com.igeek.domain;

import java.util.Date;

/**
 * @author jerryHe
 * @create 2019-10-09 16:18
 */
public class Product {
    private int pid;
    private String pname;
    private String pimage;
    private double price;
    private String description;
    private String brand;
    private String size;
    private String availability;
    private String color;
    private String cid;
    private String ishot;

    public Product() {
    }

    public Product(int pid, String pname, String pimage, double price, String description, String brand, String size, String availability, String color, String cid, String ishot) {
        this.pid = pid;
        this.pname = pname;
        this.pimage = pimage;
        this.price = price;
        this.description = description;
        this.brand = brand;
        this.size = size;
        this.availability = availability;
        this.color = color;
        this.cid = cid;
        this.ishot = ishot;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid=" + pid +
                ", pname='" + pname + '\'' +
                ", pimage='" + pimage + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", brand='" + brand + '\'' +
                ", size='" + size + '\'' +
                ", availability='" + availability + '\'' +
                ", color='" + color + '\'' +
                ", cid='" + cid + '\'' +
                ", ishot='" + ishot + '\'' +
                '}';
    }

    public String getAvailability() {
        return availability;
    }

    public void setAvailability(String availability) {
        this.availability = availability;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getIshot() {
        return ishot;
    }

    public void setIshot(String ishot) {
        this.ishot = ishot;
    }


}
