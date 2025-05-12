package com.example.springboot_tieba.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class News {
    private String id;
    private String screenName;
    private String text;
    private String topics;
    private String createdAt;
    private String label;
    private Integer followersCount;
    private String location;
    private String repost;
    private Integer repostsCount;
    private String weiboId;
    private String userScreenName;
    private String postScreenName;
    private String isPred;
    private String source;


}
