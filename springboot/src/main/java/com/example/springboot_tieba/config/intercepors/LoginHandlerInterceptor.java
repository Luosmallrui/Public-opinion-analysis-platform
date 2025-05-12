/*
package com.example.springboot_tieba.config.intercepors;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginHandlerInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Object userList = request.getSession().getAttribute("loginUser");
        if(userList != null){
//            已经登录过，放行
            return true;
        }
//        没有登陆过，拦截，返回登录页
        request.setAttribute("msg","没有权限，请先登录");
        request.getRequestDispatcher("/login").forward(request,response);
        return false;
    }
}
*/
