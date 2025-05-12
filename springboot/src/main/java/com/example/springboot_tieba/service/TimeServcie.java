package com.example.springboot_tieba.service;

import com.example.springboot_tieba.mapper.TimeMapper;
import com.example.springboot_tieba.pojo.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TimeServcie {
    @Autowired
    TimeMapper timeMapper;

    /**
     * 查询近一周的新闻
     * @param topics
     * @return
     */
    public List<News> findByTimeoneweek(String topics){
        return timeMapper.findByTimeoneweek(topics);
    }

    /**
     * 查询近一个月的新闻
     * @param topics
     * @return
     */
    public List<News> findByTimeonemonth(String topics){
        return timeMapper.findByTimeonemonth(topics);
    }

    /**
     * 查询近半年的新闻
     * @param topics
     * @return
     */
    public List<News> findByTimehalfyear(String topics){
        return timeMapper.findByTimehalfyear(topics);
    }


}
