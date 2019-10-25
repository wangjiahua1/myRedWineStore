package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101100663861";
   // public static String app_id = "2019101568390711";
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCaEOzo8AIxVXwGpPaLoC4MDrFRtzIXaomBfuZ1rNmuZbB52WkKvF00R8XzoRxXW5UY8PLnjZ0XTCiakMjaixlaBasygkRiki0V5rejX9z2t5njGFa4v0RcpNUbGne3Jn1g22Zr0WVLxpPmkjTjqQUv39cxpyXQy34OtAqsUady1jV+pf73cszK1IyvJj3lw0fa9A18fAVvy41TtXME8M1hmuKigHxwgJZizQljdfE8M6nj9SHCfDqUjW9PjO8Si7fpmLpXgeZOTxunxPgAombJz+D0xCmpmXehkkfzKff29HtmKKP7ojH+CMa2yLWgSMCBjwU9McZQ+dDMboB75w9JAgMBAAECggEADdlFom6ok8yuWF6NtuFQIk9TyxefjhFKiPRiPOOrsYx8f4d2dLuX2TI2bf7mcEfQMCzAeOX23/g9kh8/nr1wKvJlgCXLhdzD5rsVeL8OOrMoRwySBwtSVs2ORmBrsG/qR0GRhFGPPG9+LfSogmpYCASj8FepA4q3KxUt/G1ekujgrbvLlFp3DZvDjxHgTxrhUSWm0YtLbxMESIwj6niDIvKviyan6r0S1KkUqm+C+tO3wkSgnpRUJ06gcz4jJOSDqXOOyzUffcYzidid6t9ed/ntQlvPHSAgux2Cl+3yuZ8ih6o9lS467ohW5/G9eBjFlpX5ueqvR3DzNRFiIUZ6AQKBgQDOFaNhUK9GCIfLJ2aOgi8iizxu9076nWBUag0uOIYqrcY8csef7hgNoYmE/+w6s9JHzVrxwIl1r/yDySUxtNhaNHulDtj4uthe9e0jWwyf+kY0bsUasrAOcyekR0x+BsC9P8tHBTXj+0OUBFZC6hYMuvTbD6gn9RJPNsWz0NOViQKBgQC/Ydzh3v56i2w1//kS/cC2oKJIpHWdbUbgoPryEzAeAsxT4zsNjeGUBYmCwi17KC6Dl/RSBlbyc19Y3cUcL5vJ6in6nKoHC7hivQxK3qFoc9QEYRlfUVVcsude/dfir60Fr/TtZHZLdQxRD4CCiW2DFuJ2UVPa2C3KPhHTBxb7wQKBgH+8H7lY1lrVPL3p3QJlpKuHm9y3wydJVoTb+vF0LYzUivO6vQre+9+vCVr7ecNk4+iHW2BO06SzgRN6IGivzA4VS7IiAtAgl648RlDMxYV/Dfa/1cHXkZJTQ/XqD3pp2xsyKGAL1bxKaDedfI4bI7GeS9hf2v1xRHj+3Qm4XPzpAoGAXhYjfBuf6ej/MvD7p11+z4nbHnFTrSha7vXVSQsr3aUshJUyo/A7lQS/3LvPljtj2qfqoiShvCICHvMwAzJYmYR4TM+WO06EwG4GTAx1N5+x/NEroxOeLqt5WdbbuoL5QdGGTOrVyTTq8DL5z7L2Vrr6bIaA/hbHNCUdqCxVHUECgYEAuLkHCo4r49Asd5PjwYkYlaG2JRE5fEzpz5DkSz316oBJi5eHiSxenHH+NUKGmUzscuCcSw/NuS7wTP3VEki+Tz5d74+aQdFGMghOJKqnFtJXtAL/nJRYBgz3+fgP69KTsIULJTtL0i/8ApkeZqTJS/Ou02OKiL0ynP2r1xx8CXI=";
    //public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCGKLw9ak0Fd9nATXDOKtQ7D2Pd7LjGxDmDpZh/5BRbqIF6xzDQbjs9RKIRGwZuDqRuh2NK0s0Cj3MeJUdpVao8EJrj+Gz7efxVBLdkbnBukR7tQtb6U/FmiE1JIGZPxw8ELcniquY+LfPRuWlSTHSAW/uooxF8Dr3xl4w3ohgrqfumvnJJ0ATKlUBq7YYmTojZ3rfxug5KpAWoNPzBf4J+42olZt28nJq8FZMn7Quo9AtJLg1hjmv6MDWxOiu2luzDUdOt92+zU0PmgcY8N+0pk4cCsS+e2QxNSP2qUqqFDfBA/VSgE+46lvKj63sZ+1GQs8U9n2zjqy0AvkQ9nmFTAgMBAAECggEADt0ihfdqEyoFMR4jWmQ6YVTCLstUaYlCCgjlzX2al9Eij1TUXrNn0tDw185TtwveQfS0Fo0mc5srGPLuZ4g7NS5tysYyZOZOA6ljHDh0MnvXnlfic5erTj3ZujlhvIMEceUU0g03NzpmIh1Vwu1/lt0aE8QFYuZLOyIcQemund+tTZpi6OpJwhkGTBS6ImwWFa3Cu9DgtmrvFUCfmb3uK2r582ZaXFVvy7g00oeIkky0ELtCVdSLrvpJDlVdimPFVCafLiO6IvXrCT6VXC4QAA3CQHFode2hvMDhc0RfbkR0ldO1ULyIo/lXcICOLqBSYmaV73LOSeWqjsRkg97UaQKBgQDA+5hjTE3wivSKFWi/dH3M8WL8zqnxk3kM+5Yh5sACUfJFq7QMJUSBvckBrHuneWiuaQxn+pEvL0Nsj88chu6TWKNDj1XZkshpOtSEcd0/1sxnaZ1iVO+5Kk2njr7dDkmlWB2Qcan4zUsKxFcP8aceZ85kU3rOi61HYvWZQm8eXQKBgQCx98XTFAe/1H1n/VclbKs89N0qmUr49GLfADCKmNWTGKD9m+wVk9NZ3EayUM4K9N4G+Xg8DTq+GKraqqiENlhuktdX7buzt/f5aKq7gWST7y+LH85HXw/xWxbCTkhvIRi8650gOKTKAgKyrSCcZ6ruay4Q/HNSMwtQUtRc+9ejbwKBgAF/sr5KsGxG2AFeizK5d+Sol0k5Xa6Ho7ALIC5hOWqLMmOCIuLZQz/ytmXx7f/t/HcmT7dbBdek+VQVhdlF3wJ79MCok1UeQ7o1f8MLk1lUlL/U3SkPWdFJV9MOU8Mpwj6rgYdGqrhI9+U8gySXjuG4kqzKzTBfe1gLl7a6AlztAoGAN43q+QslqCJCy3VwAMS9Z5fgem3D05cmTgqXHIy9Dt//UWuc9NdigIicoQlMaGsr6+1wNP7EOZclroDbffog/NNl2ZLipyVkiTy9Hy8zIGLn6nwRPoJUTblrj1g0kEw6lq7OK8LC3jRmdzRIG8rYtvhKNw83SI+aloZkuGn9VI0CgYBXEaKEhqDumJb/TNhvpwC2aXfvWxN6AmkAX0Ht0jh2K+C4y1YRtTh1zkQW1k3JRiszb2AmrzrRzfuieHSYSe5y2PARtK0H2P3BTELRJ9o99yibCRgfT5AjGpD/eidOI5Z3cbcR4bW6ZNtKy5XtHZ1+JcpEEUuAbEmCL1QS0O3rSA==";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqCZxPbaDyemkDISoZ+Og7nFS7B738QI7/imqQigyfmxe91l2C6+ZwnjblKiqKeVOI3hrkhny0dT3VRLH+27qoFqvluJ14RRDGlMmRpPTuJeHYplgEZkXWikpqMQihxy+SxEJ6ub1JKWUXwSU0piJHqEICnurAtY1cOddFmNBGBFX+J32CLGtRtyXbDIVMg2/4MXevX4AAwZTGtdZs3UY9Y6e9eSd85yhFwLY4ZrjH8Ov0PO8CeKexRt3IWC0s6Ffp5V4Mn3bCtehbNCH0JWm+k9iNxIrL55FC7yHjBMH54JVtuELRkFTPPil4U+nCij2gaJuZviRXZi5WYWx1N4PvwIDAQAB";
   // public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA32SSoAMFarrfD3Nl3ac/oKQcJNfZeRpNCXM2Tmoah0QpZaAYWL7ARLaV7Sg3pK91UwtAzp+taHNAoix6g652oLtqzBAgohKzLhR3KzeVrvfXKcCbYT5Dao094fRg5oL4ZqJ7LDa9nAmyBYoAmHsP2BC9Wide/N2dDjjSPUZxXKugrhqdPsgUK7ehW/oY6T4QoW9a+YhtshMKpOhZnpBEovStOj2Wu7gS1rFW0aox2/c0/bckZXTQw0aAfpFc/cHXKivrXmK8gANvPSRajDmw2YqAY0sLSexqggCYjY0itjhH50aEJw+iFVxGsG4AZ8MBt5g/3LgQ/lO/+sQKF+HASQIDAQAB";
	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:7777/webstore/order?method=ordercartservlet";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:7777/webstore/order?method=ordercartservlet";
	//http://192.168.2.2:8889/webstore/payReturnServlet

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

