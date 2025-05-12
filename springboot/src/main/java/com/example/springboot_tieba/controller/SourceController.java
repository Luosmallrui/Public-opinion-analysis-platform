package com.example.springboot_tieba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SourceController {
    @RequestMapping("/source")
    public String test(){
        return "thy/source";
    }

    @RequestMapping("/source1")
    public String test1(){
        return "thy/source1";
    }

    @RequestMapping("/source2")
    public String test2(){
        return "thy/source2";
    }

    @RequestMapping("/sourceM")
    public String testM(){
        return "thy/sourceM";
    }

    @RequestMapping("/sourceM1")
    public String testM1(){
        return "thy/sourceM1";
    }

    @RequestMapping("/sourceM2")
    public String testM2(){
        return "thy/sourceM2";
    }
}
