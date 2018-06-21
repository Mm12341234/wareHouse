package com.wisdomteam.warehouse.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class GetPageController {

    //显示食物所有数据
    @GetMapping("/getPage/homePage")
    public String getHomePage() {
        return "/GetPage/homePage.html";
    }

    //显示查找食物的面板
    @GetMapping("getPage/findPage")
    public String findPage() {
        return "/GetPage/findFood.html";
    }

    //显示百度地图
    @GetMapping("/getPage/showMap")
    public String showMap() {
        return "/getPage/showMap";
    }

    //显示3D的全局图
//    @GetMapping("/getPage/getWholeSituation")
    @GetMapping("/getPage/house1")
    public String getWholeSituation(){
        return "/getPage/house1";
    }

    //显示局部图
    @GetMapping("/getPage/house2")
    public String getPartSituation(){
        return "/getPage/house2";
    }

    //显示食物的保质期的3d面板
    @GetMapping("/getPage/FoodBaoZhi")
    public String getFoodBaoZhi(){
        return "/GetPage/house3";
    }
}