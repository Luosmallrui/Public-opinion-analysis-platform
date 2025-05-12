package com.example.springboot_tieba.mapper;

import com.example.springboot_tieba.pojo.News;
import com.example.springboot_tieba.pojo.Posts;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface RepostsMapper {
    @Select("select * from reposts where weibo_id = #{id};")
    List<Posts> findAll(@Param("id") String id);

    @Select("select * from weibo where topics like CONCAT('%',#{topics},'%');")
    List<News> findByName(@Param("topics") String topics);

    @Select("select * from weibo where id = #{id};")
    List<News> findById(@Param("id") String id);
}
