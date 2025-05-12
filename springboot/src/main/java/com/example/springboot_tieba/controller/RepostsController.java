package com.example.springboot_tieba.controller;

import com.example.springboot_tieba.pojo.News;
import com.example.springboot_tieba.pojo.Posts;
import com.example.springboot_tieba.pojo.User;
import com.example.springboot_tieba.service.RepostsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RequestMapping("/reposts")
@Controller
public class RepostsController {
    @Autowired
    RepostsService repostsService;

    @RequestMapping("/list")
    public String list(Model model, HttpServletRequest request) {
        String topics = request.getParameter("topics");		//获取前端页面搜索框的值
        List<News> list = repostsService.findByName(topics);	//在数据库中进行查询
        model.addAttribute("newsList", list);	//模板映射
        return "reposts";
    }

    /*@RequestMapping("/retweets")
    //根据页面获取到的id返回新闻内容
    public String listDetail(Model model, HttpServletRequest request) {
        String id = request.getParameter("id");
        List<News> dts = repostsService.findById(id);
        model.addAttribute("dt", dts);
        return "jsp/repostDetail";
    }*/

    @RequestMapping("/retweet")
    //根据页面获取到的id获取新闻转发关系
    public String repostsService(Model m, HttpServletRequest request){
        String id = request.getParameter("id");
        List<Posts> propagationList  = repostsService.findAll(id);
        m.addAttribute("propagationList", propagationList);
        return "thy/news-visualization111";
    }

}
