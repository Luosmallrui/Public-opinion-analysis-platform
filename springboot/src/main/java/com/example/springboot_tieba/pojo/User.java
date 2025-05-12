package com.example.springboot_tieba.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
public class User implements Serializable {

    private Integer id; // 主键
    private String email; // 邮箱
    private String password; // 密码，使用 md5 + 盐 加密
    private String salt; // 盐
    private String confirmCode; // 确认码
    private LocalDateTime activationTime; // 激活失效时间
    private Byte isValid; // 是否可用

}
