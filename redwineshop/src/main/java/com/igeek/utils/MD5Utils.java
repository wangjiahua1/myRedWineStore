package com.igeek.utils;



import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @author jerryHe
 * @create 2019-10-09 10:00
 */
public class MD5Utils {
    public static final byte[] computeMD5(byte[] content) {
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            return md5.digest(content);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     *
     * @Title: md5
     * @Description: 实现md5加密
     * @param plainText
     * @return
     */
    public static String enCode(String plainText) {
        byte[] secretBytes = null;
        try {
            secretBytes = MessageDigest.getInstance("md5").digest(
                    plainText.getBytes());
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("没有md5这个算法！");
        }
        String md5code = new BigInteger(1, secretBytes).toString(16);// 16进制数字
        // 如果生成数字未满32位，需要前面补0
        for (int i = 0; i < 32 - md5code.length(); i++) {
            md5code = "0" + md5code;
        }
        return md5code;
    }


}
