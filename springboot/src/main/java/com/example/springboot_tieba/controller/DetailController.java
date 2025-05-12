package com.example.springboot_tieba.controller;

import com.example.springboot_tieba.pojo.News;
import com.example.springboot_tieba.service.DetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class DetailController {
    @Autowired
    DetailService detailService;
    //根据页面获取到的id返回新闻内容
    @RequestMapping("/newsdetail")
    public String list(Model model, HttpServletRequest request) {
        String id = request.getParameter("id");
        List<News> dts = detailService.findById(id);
        model.addAttribute("dt", dts);
        return "thy/newsdetail";
    }
}
