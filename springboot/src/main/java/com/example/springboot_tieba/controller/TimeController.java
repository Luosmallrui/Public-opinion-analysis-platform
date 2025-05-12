package com.example.springboot_tieba.controller;

import com.example.springboot_tieba.mapper.TimeMapper;
import com.example.springboot_tieba.pojo.News;
import com.example.springboot_tieba.service.TimeServcie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class TimeController {
    @Autowired
    TimeServcie timeServcie;

    /**
     * 查询近一周
     *
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/timeoneweek")
    public String listoneweek(Model model, HttpServletRequest request) {
        String topics = request.getParameter("topics");
        List<News> tows = timeServcie.findByTimeoneweek(topics);
        System.out.println(tows + " " + topics);
        model.addAttribute("tow", tows);
        return "thy/timeoneweek";
    }

    /**
     * 查询近一个月
     *
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/timeonemonth")
    public String listonemonth(Model model, HttpServletRequest request) {
        String topics = request.getParameter("topics");
        List<News> toms = timeServcie.findByTimeonemonth(topics);
        model.addAttribute("tom", toms);
        return "thy/timeonemonth";
    }

    /**
     * 查询近半年
     *
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/timehalfyear")
    public String listoneyear(Model model, HttpServletRequest request) {
        String topics = request.getParameter("topics");
        List<News> thys = timeServcie.findByTimehalfyear(topics);
        model.addAttribute("thy", thys);
        return "thy/timehalfyear";
    }


}
