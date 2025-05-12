package com.example.springboot_tieba.controller;

import com.example.springboot_tieba.mapper.AccountMapper;
import com.example.springboot_tieba.pojo.News;
import com.example.springboot_tieba.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class AccountController {
    @Autowired
    AccountMapper accountMapper;
    @RequestMapping("/account")
    public String userMapper(Model m){
        List<User> acc = accountMapper.findAll();
        m.addAttribute("accs",acc);
        return "thy/index";
    }
}
