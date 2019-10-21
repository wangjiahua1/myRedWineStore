package com.igeek.domain;

import java.util.List;

/**
 * Created by Administrator on 2019/10/19.
 */
public class CartTotal {
   public List<Cart> carts;
   public double alltotal;

    @Override
    public String toString() {
        return "CartTotal{" +
                "carts=" + carts +
                ", alltotal=" + alltotal +
                '}';
    }

    public List<Cart> getCarts() {
        return carts;
    }

    public void setCarts(List<Cart> carts) {
        this.carts = carts;
    }

    public double getAlltotal() {
        return alltotal;
    }

    public void setAlltotal(double alltotal) {
       double alltotal1=0.0;
        if(carts!=null){
            for (Cart listcart:carts){
                alltotal1+=listcart.getTotal();
            }
            this.alltotal=alltotal1;
        }else {
            this.alltotal = alltotal;
        }
    }

    public CartTotal() {
    }

    public CartTotal(List<Cart> carts, double alltotal) {
        this.carts = carts;
        this.alltotal = alltotal;
    }
}
