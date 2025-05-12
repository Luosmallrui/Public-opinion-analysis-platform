package com.example.springboot_tieba.mapper;

import com.example.springboot_tieba.pojo.News;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;

import java.util.List;

@Mapper
public interface TimeMapper {

    @SelectProvider(type = TimeSqlProvider.class, method = "findByTimeoneweek")
    List<News> findByTimeoneweek(@Param("topics") String topics);

    @SelectProvider(type = TimeSqlProvider.class, method = "findByTimeonemonth")
    List<News> findByTimeonemonth(@Param("topics") String topics);

    @SelectProvider(type = TimeSqlProvider.class, method = "findByTimehalfyear")
    List<News> findByTimehalfyear(@Param("topics") String topics);
}