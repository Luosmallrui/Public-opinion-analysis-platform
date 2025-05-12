package com.example.springboot_tieba.controller;

import com.example.springboot_tieba.mapper.PopMapper;
import com.example.springboot_tieba.pojo.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class PopController {
    @Autowired
    PopMapper popMapper;
    @RequestMapping("/popularity")
    public String userMapper(Model m){
        List<News> pop = popMapper.findByPop();
        m.addAttribute("pops",pop);
        return "thy/popularity";
    }
}
