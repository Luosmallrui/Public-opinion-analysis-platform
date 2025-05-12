package com.example.springboot_tieba.mapper;

import com.example.springboot_tieba.pojo.News;
import com.example.springboot_tieba.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface AccountMapper {
    @Select("select id, email, password, activation_time from userlogin;")
    List<User> findAll();
}
