package com.example.springboot_tieba.controller;

import com.example.springboot_tieba.pojo.News;
import com.example.springboot_tieba.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("news")
public class NewsController {
    @Autowired
    NewsService newsService;

    @RequestMapping("/list")
    public String list(Model model, HttpServletRequest request) {
        String topics = request.getParameter("topics");		//获取前端页面搜索框的值
        List<News> list = newsService.findByName(topics);	//在数据库中进行查询
        model.addAttribute("newsList", list);	//模板映射
        return "thy/news";
    }
}
