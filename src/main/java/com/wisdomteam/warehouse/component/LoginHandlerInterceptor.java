package com.wisdomteam.warehouse.component;


import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/*
 * 登录检测
 * 拦截器
 */
public class LoginHandlerInterceptor implements HandlerInterceptor {
    //目标方法执行之前
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws ServletException, IOException {
        Object admin=request.getSession().getAttribute("AdminId");
        if(admin==null){
            //未登录，返回登陆页面
            System.out.println("前拦截");
            request.setAttribute("msg","没有权限请先登录");
            request.getRequestDispatcher("login").forward(request,response);
            return false;
        }else{
            //已经登录，放行
//            request.getRequestDispatcher("/index.html").forward(request,response);
            return true;
        }
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {

    }
}
