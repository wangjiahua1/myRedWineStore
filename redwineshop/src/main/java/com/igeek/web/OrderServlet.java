package com.igeek.web;

import com.alipay.api.AlipayApiException;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.igeek.domain.Cart;
import com.igeek.domain.CartTotal;
import com.igeek.domain.User;
import com.igeek.service.OrderService;
import com.igeek.service.ProductService;
import com.igeek.utils.BeanFactory;
import com.alipay.api.AlipayClient;
import com.alipay.config.AlipayConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

/**
 * @author jerryHe
 * @create 2019-10-08 15:59
 */

@WebServlet("/order")
public class OrderServlet extends BaseServlet {
    OrderService ors=(OrderService)BeanFactory.getBean("orderservice");
    ProductService ps=(ProductService)BeanFactory.getBean("myredwineservice");

    public void findallorder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("i am comming order");
        System.out.println(req.getParameter("uid"));
        /*resp.getWriter().write(req.getParameter("carts"));*/
        ProductService ps=(ProductService) BeanFactory.getBean("myredwineservice");
        List<Cart> carts = ps.findallcart(req.getParameter("uid"));
        req.setAttribute("carts",carts);
        CartTotal cartTotal = new CartTotal();
        cartTotal.setCarts(carts);
        cartTotal.setAlltotal(0.0);
        req.setAttribute("cartTotal", cartTotal);
        req.getRequestDispatcher("check-out.jsp").forward(req, resp);
    }

    public void orderredmine(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession httpSession=req.getSession();
        String uid= UUID.randomUUID().toString();/*(String) httpSession.getAttribute("uid");*/
        String total=req.getParameter("total");
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
        System.out.println("你的购买东西total:"+total+uid);
        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);


        //付款金额，必填
        String total_amount = total;
        //订单名称，必填
        String subject = "redmine";
        //商品描述，可空
        String body = "redmineBody";
        alipayRequest.setBizContent("{\"out_trade_no\":\""+ uid +"\","
                + "\"total_amount\":\""+ total_amount +"\","
                + "\"subject\":\""+ subject +"\","
                + "\"body\":\""+ body +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        //请求
        try {
            String result = alipayClient.pageExecute(alipayRequest).getBody();
            resp.getWriter().write(result);
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }
    }

    public void ordercartservlet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("i am comming ordercartservlet   state");
        ors.updatecartstate();
        User user= (User) request.getSession().getAttribute("user");
        List<Cart> carts= ps.findallcart(user.getUid());
        System.out.println(carts);
        CartTotal cartTotal=new CartTotal();
        cartTotal.setCarts(carts);
        cartTotal.setAlltotal(0.0);
        request.setAttribute("cartTotal",cartTotal);
        request.getRequestDispatcher("shopping-cart-fullwidth.jsp").forward(request,response);
    }
}
