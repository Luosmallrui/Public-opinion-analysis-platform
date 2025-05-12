package com.example.springboot_tieba;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/*@ComponentScan("com.example.springboot_tieba.config")*/
@MapperScan("com.example.springboot_tieba.mapper")
@SpringBootApplication
public class SpringbootTiebaApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootTiebaApplication.class, args);
    }

}
