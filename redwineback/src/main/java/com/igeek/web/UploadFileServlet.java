package com.igeek.web;

import com.aliyun.oss.ClientException;
import com.aliyun.oss.OSSClient;
import com.aliyun.oss.OSSException;
import com.aliyun.oss.model.BucketInfo;
import com.aliyun.oss.model.OSSObject;
import com.aliyun.oss.model.OSSObjectSummary;
import com.aliyun.oss.model.ObjectListing;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.net.URL;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@WebServlet("/uploadimg")
@MultipartConfig//标识Servlet支持文件上传
public class UploadFileServlet extends HttpServlet {
    // endpoint是访问OSS的域名。如果您已经在OSS的控制台上 创建了Bucket，请在控制台上查看域名。
    // 如果您还没有创建Bucket，endpoint选择请参看文档中心的“开发人员指南 > 基本概念 > 访问域名”，
    // 链接地址是：https://help.aliyun.com/document_detail/oss/user_guide/oss_concept/endpoint.html?spm=5176.docoss/user_guide/endpoint_region
    // endpoint的格式形如“http://oss-cn-hangzhou.aliyuncs.com/”，注意http://后不带bucket名称，
    // 比如“http://bucket-name.oss-cn-hangzhou.aliyuncs.com”，是错误的endpoint，请去掉其中的“bucket-name”。
    private static String endpoint = "http://oss-cn-hangzhou.aliyuncs.com";

    // accessKeyId和accessKeySecret是OSS的访问密钥，您可以在控制台上创建和查看，
    // 创建和查看访问密钥的链接地址是：https://ak-console.aliyun.com/#/。
    // 注意：accessKeyId和accessKeySecret前后都没有空格，从控制台复制时请检查并去除多余的空格。
    private static String accessKeyId = "LTAI4FsuzZJnKgftiRcE7cx5";
    private static String accessKeySecret = "JHOXQBR2dIfEVn3W9ly1aedQ0XHYB0";

    // Bucket用来管理所存储Object的存储空间，详细描述请参看“开发人员指南 > 基本概念 > OSS基本概念介绍”。
    // Bucket命名规范如下：只能包括小写字母，数字和短横线（-），必须以小写字母或者数字开头，长度必须在3-63字节之间。
    private static String bucketName = "mingyeupdate";

    // Object是OSS存储数据的基本单元，称为OSS的对象，也被称为OSS的文件。详细描述请参看“开发人员指南 > 基本概念 > OSS基本概念介绍”。
    // Object命名规范如下：使用UTF-8编码，长度必须在1-1023字节之间，不能以“/”或者“\”字符开头。
    //文件名
    private static String fileName = "update";



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //获取上传的文件集合
        Collection<Part> parts = request.getParts();
        //上传单个文件
        if(parts.size()>0){
            //通过表单file控件(<input type="file" name="file">)的名字直接获取Part对象
            Part part = request.getPart("upload");
            //获取文件名  tomcat8 提供的一个方法获取文件名
            //String filename = part.getSubmittedFileName();
            //System.out.println(filename);
            //Servlet3没有提供直接获取文件名的方法,需要从请求头中解析出来
            //获取请求头，请求头的格式：form-data; name="file"; filename="snmp4j--api.zip"
            String header = part.getHeader("content-disposition");
            //获取文件名
            fileName = getFileName(header);
            //System.out.println(fileName+"aaa");

            //加入上传代码
            OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
            URL url=null;
            try {

                // 判断Bucket是否存在。详细请参看“SDK手册 > Java-SDK > 管理Bucket”。
                // 链接地址是：https://help.aliyun.com/document_detail/oss/sdk/java-sdk/manage_bucket.html?spm=5176.docoss/sdk/java-sdk/init
                if (ossClient.doesBucketExist(bucketName)) {
                    System.out.println("您已经创建Bucket：" + bucketName + "。");
                } else {
                    System.out.println("您的Bucket不存在，创建Bucket：" + bucketName + "。");
                    // 创建Bucket。详细请参看“SDK手册 > Java-SDK > 管理Bucket”。
                    // 链接地址是：https://help.aliyun.com/document_detail/oss/sdk/java-sdk/manage_bucket.html?spm=5176.docoss/sdk/java-sdk/init
                    ossClient.createBucket(bucketName);
                }

                // 查看Bucket信息。详细请参看“SDK手册 > Java-SDK > 管理Bucket”。
                // 链接地址是：https://help.aliyun.com/document_detail/oss/sdk/java-sdk/manage_bucket.html?spm=5176.docoss/sdk/java-sdk/init
                BucketInfo info = ossClient.getBucketInfo(bucketName);
                System.out.println("Bucket " + bucketName + "的信息如下：");
                System.out.println("\t数据中心：" + info.getBucket().getLocation());
                System.out.println("\t创建时间：" + info.getBucket().getCreationDate());
                System.out.println("\t用户标志：" + info.getBucket().getOwner());

                // 把字符串存入OSS，Object的名称为firstKey。详细请参看“SDK手册 > Java-SDK > 上传文件”。
                // 链接地址是：https://help.aliyun.com/document_detail/oss/sdk/java-sdk/upload_object.html?spm=5176.docoss/user_guide/upload_object
                //获取文件输入流
                InputStream is = part.getInputStream();

                // 设置URL过期时间为1小时。
                Date expiration = new Date(new Date().getTime() + 3600 * 1000);
                // 生成以GET方法访问的签名URL，访客可以直接通过浏览器访问相关内容。
                url = ossClient.generatePresignedUrl(bucketName, fileName, expiration);

                ossClient.putObject(bucketName, fileName, is);
                System.out.println("Object：" + fileName + "存入OSS成功。");

                System.out.println("url:"+url.toString());

            } catch (OSSException oe) {
                oe.printStackTrace();
            } catch (ClientException ce) {
                ce.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                ossClient.shutdown();
            }



            String s = "{\"path\":\""+url+"\"}";
            //System.out.println(s);
            try {
                response.getWriter().write(s);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }


    /**
     * 根据请求头解析出文件名
     * 请求头的格式：火狐和google浏览器下：form-data; name="file"; filename="snmp4j--api.zip"
     *                 IE浏览器下：form-data; name="file"; filename="E:\snmp4j--api.zip"
     * @param header 请求头
     * @return 文件名
     */
    public String getFileName(String header) {
        System.out.println(header);
        /**
         * String[] tempArr1 = header.split(";");代码执行完之后，在不同的浏览器下，tempArr1数组里面的内容稍有区别
         * 火狐或者google浏览器下：tempArr1={form-data,name="file",filename="snmp4j--api.zip"}
         * IE浏览器下：tempArr1={form-data,name="file",filename="E:\snmp4j--api.zip"}
         */
        String[] tempArr1 = header.split(";");
        /**
         *火狐或者google浏览器下：tempArr2={filename,"snmp4j--api.zip"}
         *IE浏览器下：tempArr2={filename,"E:\snmp4j--api.zip"}
         */
        String[] tempArr2 = tempArr1[2].split("=");
        //获取文件名，兼容各种浏览器的写法
        String fileName = tempArr2[1].substring(tempArr2[1].lastIndexOf("\\")+1).replaceAll("\"", "");
        return fileName;
    }
}
