package com.example.springboot_tieba.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Posts implements Serializable {
    private String id;
    private String weiboId;
    private String userId;
    private String createdAt;
    private String userScreenName;
    private String text;
    private String postId;
    private String postScreenName;
    private String postFollowersCount;
    private String postLocation;
    private String isPred;

}
