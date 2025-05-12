package com.example.springboot_tieba.service;

import com.example.springboot_tieba.mapper.RepostsMapper;
import com.example.springboot_tieba.pojo.News;
import com.example.springboot_tieba.pojo.Posts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RepostsService {
    @Autowired
    RepostsMapper repostsMapper;

    /**
     * 获取转发关系
     * @return
     */
    public List<Posts> findAll(String id){
        return repostsMapper.findAll(id);
    }

    /**
     * 根据关键词查找相关新闻
     * @param topics
     * @return
     */
    public List<News> findByName(String topics){
        return repostsMapper.findByName(topics);
    }

    /**
     * 根据新闻id返回对应的传播链
     * @param id
     * @return
     */
    public List<News> findById(String id){
        return repostsMapper.findById(id);
    }
}
