package com.example.springboot_tieba.mapper;

import com.example.springboot_tieba.pojo.News;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface PopMapper {
    @Select("select * from weibo order by reposts_count desc limit 0,10;")
    List<News> findByPop();
}
