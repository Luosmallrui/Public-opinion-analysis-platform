package com.example.springboot_tieba.controller;

import com.example.springboot_tieba.mapper.TestMapper;
import com.example.springboot_tieba.pojo.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class TestController {
    @Autowired
    TestMapper testMapper;
    @RequestMapping("/testdetail")
    public String userMapper(Model m){
        List<News> detail = testMapper.findAll();
        m.addAttribute("details",detail);
        return "thy/index";
    }
}
