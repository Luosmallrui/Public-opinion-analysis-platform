package com.example.springboot_tieba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TraceController {
    @RequestMapping("/trace")
    public String test(){
        return "thy/trace";
    }

    @RequestMapping("/trace1")
    public String test1(){
        return "thy/trace1";
    }

    @RequestMapping("/trace2")
    public String test2(){
        return "thy/trace2";
    }

    @RequestMapping("/traceM")
    public String testM(){
        return "thy/traceM";
    }
}
