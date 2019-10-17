package com.igeek.utils;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

public class BeanFactory {
    public static Object getBean(String id) {
        try {
            // 解析xml文件，引入dom4jjar包
            //创建一个解析器
            SAXReader reader = new SAXReader();
            String url = BeanFactory.class.getClassLoader().getResource("beans.xml").getPath();
            //获取文档对象
            Document doc = reader.read(url);
            //获取一个节点
            Element element = (Element)doc.selectSingleNode("//bean[@id='"+id+"']");

            //获取的是类的名称
            String classValue = element.attributeValue("class");
            //通过反射获取类对象
            Class clazz = Class.forName(classValue);
            //创建对象
            Object instance = clazz.newInstance();

            return instance;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }
}
