package com.wisdomteam.warehouse.config;

import com.wisdomteam.warehouse.component.LoginHandlerInterceptor;
import com.wisdomteam.warehouse.component.WebIntercrptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
public class webInterceptorAdapter implements WebMvcConfigurer {
    @Bean
    public LoginHandlerInterceptor webIntercrptor(){
        return new LoginHandlerInterceptor();
    }

    //拦截器
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(webIntercrptor()).addPathPatterns("/**").excludePathPatterns("/","/login","/admin", "/**/*.css","/**/*.js","/**/*.png","/**/*.jpg");
    }

    //重定向
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/error").setViewName("404.html");
//        registry.addViewController("/").setViewName("/login");
    }

    //注入视图处理器bean
    @Bean
    public InternalResourceViewResolver viewResolver(){
        InternalResourceViewResolver resourceViewResolver=new InternalResourceViewResolver();
        resourceViewResolver.setPrefix("/templates/");
        resourceViewResolver.setSuffix(".html");
        resourceViewResolver.setViewClass(JstlView.class);
        return resourceViewResolver;
    }

    //添加文件是暴露路径和文件的实际访问路径
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/view").addResourceLocations("/");
    }
}
