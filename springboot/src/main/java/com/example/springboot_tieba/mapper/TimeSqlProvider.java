package com.example.springboot_tieba.mapper;

import org.apache.ibatis.annotations.Param;

public class TimeSqlProvider {

    public String findByTimeoneweek(@Param("topics") String topics) {
        StringBuilder sql = new StringBuilder("SELECT * FROM weibo WHERE 1=1 ");

        // 如果 topics 不为空，则添加模糊查询条件
        if (topics != null && !topics.trim().isEmpty()) {
            sql.append(" AND text LIKE CONCAT('%', #{topics}, '%')");
        }
        // 添加时间范围条件（一周内）
//        sql.append(" AND createdAt >= NOW() - INTERVAL 7 DAY");
        sql.append(" LIMIT 20");
        return sql.toString();
    }

    public String findByTimeonemonth(@Param("topics") String topics) {
        StringBuilder sql = new StringBuilder("SELECT * FROM weibo WHERE 1=1 ");

        if (topics != null && !topics.trim().isEmpty()) {
            sql.append(" AND text LIKE CONCAT('%', #{topics}, '%')");
        }

        // 添加时间范围条件（一月内）
//        sql.append(" AND createdAt >= NOW() - INTERVAL 1 MONTH");
        sql.append(" LIMIT 20");
        return sql.toString();
    }

    public String findByTimehalfyear(@Param("topics") String topics) {
        StringBuilder sql = new StringBuilder("SELECT * FROM weibo WHERE 1=1 ");

        if (topics != null && !topics.trim().isEmpty()) {
            sql.append(" AND text LIKE CONCAT('%', #{topics}, '%')");
        }

        // 添加时间范围条件（半年内）
//        sql.append(" AND createdAt >= NOW() - INTERVAL 6 MONTH");
        sql.append(" LIMIT 20");
        return sql.toString();
    }
}