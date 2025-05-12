package com.example.springboot_tieba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SystemController {

    /**
     * 登录页面跳转
     */
    @GetMapping("login")
    public String login(){
        return "thy/login";
    }

    /**
     * 注册页面跳转
     * @return
     */
    @GetMapping("registry")
    public String registry(){
        return "thy/registry";
    }
}
