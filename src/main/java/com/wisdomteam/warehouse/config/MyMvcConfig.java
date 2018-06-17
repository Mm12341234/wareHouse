package com.wisdomteam.warehouse.config;//package com.atguigu.springboot.config;

import com.wisdomteam.warehouse.component.LoginHandlerInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import sun.net.www.content.image.png;


//WebMvcConfigurerAdapter可以扩展springMvc的功能
/*
 *    @EnableWebMvc
 *    全面接管springMvc
 */
//@Configuration
public class MyMvcConfig extends WebMvcConfigurerAdapter {

//    @Bean//将组键注册在容器中
    public WebMvcConfigurerAdapter webMvcConfigurerAdapter(){
        WebMvcConfigurerAdapter adapter=new WebMvcConfigurerAdapter() {
            @Override
            public void addViewControllers(ViewControllerRegistry registry) {
//                super.addViewControllers(registry);
                registry.addViewController("/").setViewName("login");
                registry.addViewController("/index.html").setViewName("login");
                registry.addViewController("/main.html").setViewName("dashboard");
            }

            //注册拦截器
            @Override
            public void addInterceptors(InterceptorRegistry registry) {
               super.addInterceptors(registry);
                /*
                 *   1、教学视频说springboot已经配置好静态资源的映射，不会拦截
                 *   2、但是我这里检验到的是拦截了
                 *   3、特别注意不能出现空格
                 */
                registry.addInterceptor(new LoginHandlerInterceptor()).addPathPatterns("/**")
                        .excludePathPatterns("/admin","/index.html","/test.html", "/**/*.css","/**/*.js","/**/*.png","/**/*.jpg");
            }
         };

        return adapter;
     }
}
