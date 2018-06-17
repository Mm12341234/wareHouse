package com.wisdomteam.warehouse.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class GetPageController {

    //显示食物所有数据
    @GetMapping("/getPage/homePage")
    public String getHomePage(){
        return "/GetPage/homePage.html";
    }

    //显示查找食物的面板
    @GetMapping("getPage/findPage")
    public String findPage(){
        return "/GetPage/findFood.html";
    }
}
