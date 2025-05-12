package com.example.springboot_tieba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FindsourceController {
    @RequestMapping("/findsource")
    public String test(){
        return "thy/findsource";
    }

    @RequestMapping("/findsourceM")
    public String testM(){
        return "thy/findsourceM";
    }
}
