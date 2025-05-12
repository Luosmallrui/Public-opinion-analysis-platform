package com.example.springboot_tieba.service;

import com.example.springboot_tieba.mapper.DetailMapper;
import com.example.springboot_tieba.pojo.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DetailService {
    @Autowired
    //根据id返回新闻详细内容
    DetailMapper detailMapper;

    /**
     * 根据id返回新闻内容
     * @param id
     * @return
     */
    public List<News> findById(String id){
        return detailMapper.findById(id);
    }

}
