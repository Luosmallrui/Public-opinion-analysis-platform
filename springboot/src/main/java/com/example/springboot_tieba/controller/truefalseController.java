package com.example.springboot_tieba.controller;

import com.example.springboot_tieba.mapper.TruefalseMapper;
import com.example.springboot_tieba.pojo.News;
import com.example.springboot_tieba.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class truefalseController {
    @Autowired
    TruefalseMapper truefalseMapper;

    @RequestMapping("/true")

    public String truefalseMapper(Model m, HttpServletRequest request){
        String topics = request.getParameter("topics");
        List<News> ts = truefalseMapper.findAll(topics);
        m.addAttribute("truefalse",ts);
        return "thy/truefalse";
    }

    @RequestMapping("/false")

    public String falseMapper(Model m, HttpServletRequest request){
        String topics = request.getParameter("topics");
        List<News> ts = truefalseMapper.findFalse(topics);
        m.addAttribute("truefalse",ts);
        return "thy/false";
    }
}
