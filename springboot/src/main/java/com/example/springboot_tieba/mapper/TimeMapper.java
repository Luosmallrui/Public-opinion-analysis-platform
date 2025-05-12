package com.example.springboot_tieba.mapper;

import com.example.springboot_tieba.pojo.News;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface TimeMapper {
    @Select("SELECT * FROM weibo WHERE text like CONCAT('%',#{topics},'%') and TO_DAYS( NOW( ) ) - TO_DAYS( created_at) <= 7;")
    List<News> findByTimeoneweek(@Param("topics") String topics);

    @Select("SELECT * FROM weibo WHERE text like CONCAT('%',#{topics},'%') and TO_DAYS( NOW( ) ) - TO_DAYS( created_at) <= 30;")
    List<News> findByTimeonemonth(@Param("topics") String topics);

    @Select("SELECT * FROM weibo WHERE text like CONCAT('%',#{topics},'%') and TO_DAYS( NOW( ) ) - TO_DAYS( created_at) <= 1900;")
    List<News> findByTimehalfyear(@Param("topics") String topics);
}
