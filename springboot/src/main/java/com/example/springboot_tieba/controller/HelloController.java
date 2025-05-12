package com.example.springboot_tieba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HelloController {
    /*@RequestMapping("/hello")
    public String Hello() {
        return "CR77777777";
    }*/

    @RequestMapping("/pop")
    public String hello(){
        return "thy/test";
    }
}
