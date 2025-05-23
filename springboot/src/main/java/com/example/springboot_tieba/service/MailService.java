/*
package com.example.springboot_tieba.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.util.Date;

@Service
public class MailService {

    @Value("${spring.mail.username}")
    private String mailUsername;
    @Resource
    private JavaMailSender javaMailSender;
    @Resource
    private TemplateEngine templateEngine;

    */
/**
     * 激活账号邮件发送
     *
     * @param activationUrl 激活 url 链接
     * @param email         收件人邮箱
     *//*

    public void sendMailForActivationAccount(String activationUrl, String email) {
        // 创建邮件对象
        MimeMessage message = javaMailSender.createMimeMessage();
        MimeMessageHelper helper;
        try {
            helper = new MimeMessageHelper(message, true);
            // 设置邮件主题
            helper.setSubject("欢迎来到舆情分析平台 - 个人账号激活");
            // 设置邮件发送者
            helper.setFrom(mailUsername);
            // 设置邮件接受者，可以多个
            helper.setTo(email);
            // 设置邮件抄送人，可以多个
            // message.setCc();
            // 设置隐秘抄送人，可以多个
            // message.setBcc();
            // 设置邮件发送日期
            helper.setSentDate(new Date());
            // 创建上下文环境
            Context context = new Context();
            context.setVariable("activationUrl", activationUrl);
            String text = templateEngine.process("activation-account.html", context);
            // 设置邮件正文
            helper.setText(text, true);
            javaMailSender.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        // 邮件发送

    }

}
*/
