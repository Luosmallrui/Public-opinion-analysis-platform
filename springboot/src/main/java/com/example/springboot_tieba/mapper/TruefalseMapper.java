package com.example.springboot_tieba.mapper;

import com.example.springboot_tieba.pojo.News;
import com.example.springboot_tieba.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface TruefalseMapper {
    @Select("SELECT * FROM weibo WHERE text like CONCAT('%',#{topics},'%') and TO_DAYS( NOW( ) ) - TO_DAYS( created_at) <= 360 and label = 'True';")
    List<News> findAll(@Param("topics") String topics);

    @Select("SELECT * FROM weibo WHERE text like CONCAT('%',#{topics},'%') and TO_DAYS( NOW( ) ) - TO_DAYS( created_at) <= 360 and label = 'False';")
    List<News> findFalse(@Param("topics") String topics);
}
