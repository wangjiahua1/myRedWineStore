package com.igeek.domain;

import java.util.List;

public class Page<T> {
    private List<T> list; //当前页列表数据,数据库查询得到

    private int pageNumber; //当前页码,前端页面传递

    private int totalRecord; //总记录数,数据库查询得到

    private int pageSize; //每页显示条数,在Servlet中指定

    //private int totalPage; //总页数,计算得到

    //private int index; //当前页的起始索引,计算得到

    private String path; //用来设置Servlet访问路径及method参数

    public Page() {
    }

    public Page(int totalRecord, int pageSize) {
        this.totalRecord = totalRecord;
        this.pageSize = pageSize;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
}
