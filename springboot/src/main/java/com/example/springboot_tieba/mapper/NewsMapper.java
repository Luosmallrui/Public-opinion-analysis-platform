package com.example.springboot_tieba.mapper;

import com.example.springboot_tieba.pojo.News;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface NewsMapper {
    @Select("select * from weibo where text like CONCAT('%',#{topics},'%');")
    List<News> findByName(@Param("topics") String topics);
}
