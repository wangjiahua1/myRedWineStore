package com.igeek.domain;

/**
 * Created by Administrator on 2019/10/18.
 */
public class Cart {
    private  int  cartid;
    private  String uid;
    private  int pid;
    private  String pname;
    private  double price;
    private  String pimage;
    private  int quantity;
    private  double total;

    @Override
    public String toString() {
        return "Cart{" +
                "cartid=" + cartid +
                ", uid='" + uid + '\'' +
                ", pid=" + pid +
                ", pname='" + pname + '\'' +
                ", price=" + price +
                ", pimage='" + pimage + '\'' +
                ", quantity=" + quantity +
                ", total=" + total +
                '}';
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Cart(int cartid, String uid, int pid, String pname, double price, String pimage, int quantity, double total) {
        this.cartid = cartid;
        this.uid = uid;
        this.pid = pid;
        this.pname = pname;
        this.price = price;
        this.pimage = pimage;
        this.quantity = quantity;
        this.total = total;
    }

    public int getCartid() {
        return cartid;
    }

    public void setCartid(int cartid) {
        this.cartid = cartid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
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

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double Quantity) {
        this.total = Quantity*getPrice();
    }

    public Cart() {
    }

    public Cart(int cartid, String uid, int pid, String pname, String pimage, int quantity, double total) {
        this.cartid = cartid;
        this.uid = uid;
        this.pid = pid;
        this.pname = pname;
        this.pimage = pimage;
        this.quantity = quantity;
        this.total = total;
    }
}
