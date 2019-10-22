package com.igeek.domain;

import java.util.List;

public class Page {
    private int maxPage;
    private int currentpage;
    private String condition;

    public Page() {
    }

    public Page(int maxPage, int currentpage, String condition) {
        this.maxPage = maxPage;
        this.currentpage = currentpage;
        this.condition = condition;
    }

    public int getMaxPage() {
        return maxPage;
    }

    public void setMaxPage(int maxPage) {
        this.maxPage = maxPage;
    }

    public int getCurrentpage() {
        return currentpage;
    }

    public void setCurrentpage(int currentpage) {
        this.currentpage = currentpage;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }
}
