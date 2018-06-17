//package com.wisdomteam.warehouse.config;
//
//import com.wisdomteam.warehouse.component.LoginHandlerInterceptor;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
//import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
///*
// *，网上搜索解决办法，发现大多是说继承WebMvcConfigurationSupport来代替 ，
// * 但是一旦继承WebMvcConfigurationSupport后就会出现新的问题，会发现Spring Boot
// * 的WebMvc自动配置失效，具体表现比如访问不到静态资源（js，css等）了，这是因为
// * WebMvc的自动配置都在WebMvcAutoConfiguration类中，但是类中有这个注解
// * @ConditionalOnMissingBean({WebMvcConfigurationSupport.class})，
// * 意思是一旦在容器中检测到WebMvcConfigurationSupport这个类，
// * WebMvcAutoConfiguration类中的配置都不生效。所以一旦我们自己写的配置类
// * 继承了WebMvcConfigurationSupport，
// * 相当于容器中已经有了WebMvcConfigurationSupport，所以默认配置都不会生效，都得自己在配置文件中配置
// */
//
////@Configuration
//public class MyMvcConfig_ extends WebMvcConfigurationSupport {
//
//    //将组件注册到容器中
////    @Bean
//    public WebMvcConfigurationSupport webMvcConfigurationSupport(){
//        WebMvcConfigurationSupport support=new WebMvcConfigurationSupport(){
//
//            @Override
//            public void addViewControllers(ViewControllerRegistry registry) {
////                super.addViewControllers(registry);
//                registry.addViewController("/").setViewName("login");
//                registry.addViewController("/index.html").setViewName("login");
//            }
//
//            //注册拦截器
//            @Override
//            public void addInterceptors(InterceptorRegistry registry) {
//                super.addInterceptors(registry);
//                /*
//                 *   1、教学视频说springboot已经配置好静态资源的映射，不会拦截
//                 *   2、但是我这里检验到的是拦截了
//                 *   3、特别注意不能出现空格
//                 */
//                registry.addInterceptor(new LoginHandlerInterceptor()).addPathPatterns("/**")
//                        .excludePathPatterns("/admin","/index.html","/test.html", "/**/*.css","/**/*.js","/**/*.png ","/**/*.jpg");
//            }
//        };
//        return support;
//    }
//
//}
