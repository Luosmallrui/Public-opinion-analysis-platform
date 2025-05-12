package com.example.springboot_tieba.mapper;

import com.example.springboot_tieba.pojo.News;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface TestMapper {
    @Select("select * from weibo;")
    List<News> findAll();
}
