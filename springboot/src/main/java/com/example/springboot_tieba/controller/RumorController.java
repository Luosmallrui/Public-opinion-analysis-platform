package com.example.springboot_tieba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RumorController {
    @RequestMapping("/rumor")
    public String test(){
        return "thy/rumor";
    }

    @RequestMapping("/rumorM")
    public String testM(){
        return "thy/rumorM";
    }
}
