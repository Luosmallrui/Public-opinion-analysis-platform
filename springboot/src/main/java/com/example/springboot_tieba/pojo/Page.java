package com.example.springboot_tieba.pojo;

import lombok.Data;

import java.util.List;

@Data
public class Page {
    private int pageno;
    private int pagesize;
    private int totalpage;
    private int totalcount;
    private List<News> news;

    public Page(int pageno, int pagesize, int totalpage, int totalcount, List<News> news) {
        this.pageno=pageno;
        this.pagesize=pagesize;
        this.totalpage=totalpage;
        this.totalcount=totalcount;
        this.news=news;
    }
}
