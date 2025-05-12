package com.example.springboot_tieba.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.mail.internet.MimeMessage;
import java.io.InputStream;
import java.util.Locale;

@Configuration
public class MyMvcConfig implements WebMvcConfigurer {
    //    ViewResolver 实现了视图解析器接口的类，我们就可以把他看作试图解析器
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("login");

    }

    public ViewResolver myViewResolver() {
        return new MyViewResolver();
    }

    public static class MyViewResolver implements ViewResolver {
        //自定义一个自己的试图解析器myViewResolver
        @Override
        public View resolveViewName(String viewName, Locale locale) throws Exception {
            return null;
        }
    }
}

