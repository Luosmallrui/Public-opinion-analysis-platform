package com.example.springboot_tieba.service;

import com.example.springboot_tieba.mapper.NewsMapper;
import com.example.springboot_tieba.pojo.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsService {
    @Autowired
    //根据标题关键词获取新闻列表
    NewsMapper newsMapper;

    /**
     * 根据关键词模糊查询
     * @param topics
     * @return
     */
    public List<News> findByName(String topics){
        return newsMapper.findByName(topics);
    }
}
