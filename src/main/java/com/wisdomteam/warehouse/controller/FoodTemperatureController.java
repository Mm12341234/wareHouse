package com.wisdomteam.warehouse.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wisdomteam.warehouse.bean.FoodTemperature;
import com.wisdomteam.warehouse.service.FoodTemperatureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class FoodTemperatureController {

    @Autowired
    FoodTemperatureService foodTemperatureService;

    //显示查找食物温度
    @GetMapping("/Foods/showFoodTemperature")
    public String getFoodTemperature(){
        return "/FoodTemperature/findFood";
    }

    //点击按钮，获得温度的界面
    @GetMapping("/Foods/FoodTemperature")
    public String foodTemperature(){
        return "/FoodTemperature/FoodTemperature";
    }

    //从后台异步加载，真正获取食物温度的数据（这是检索所有数据的）
    @ResponseBody
    @PostMapping("/Foods/getFoodTemperature")
    public String getFoodTemperature(@RequestParam("foodId") Integer foodId) throws JsonProcessingException {
        List<FoodTemperature> allItems=foodTemperatureService.getFoodTemperature(foodId);
//        System.out.println(allItems);
//        System.out.println("List集合转json格式字符串 :" + json);json
//        model.addAttribute("allFoodTemperature",allItems);
        //转换成json格式
//        ObjectMapper mapper = new ObjectMapper();
//        String jsonlist = mapper.writeValueAsString(allItems);
        SimpleDateFormat formatter  = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        ObjectMapper mapper =new ObjectMapper();
        mapper.getSerializationConfig().with(formatter);
        String jsonlist = mapper.writeValueAsString(allItems);
        System.out.println(jsonlist);
        return jsonlist;
    }



    /*
     *   点击按钮，获得温度的界面
     */
    @GetMapping("/Foods/FoodTemperatureByTime")
    public String foodTemperatureByTime(){
        return "/FoodTemperature/FoodTemperatureByTime";
    }
    /*
     *   这个是根据食物的id，包括时间段，
     *   实时程度：10分钟，1个小时，1天
     */
    @ResponseBody
    @PostMapping("/Foods/getFoodTemperatureByTime")
    public String getFoodTemperatureByTime(@RequestParam("foodId") Integer foodId,
                                      @RequestParam("timeRange") String timeRange) throws JsonProcessingException {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格
        Date d=new Date();
//        System.out.println(df.format(d));// new Date()为获取当前系统时间
        String e=df.format(new Date(d.getTime()-10*60*1000));
//        System.out.println(e);
        List<FoodTemperature> allItems=foodTemperatureService.getFoodTemperatureByTime(foodId,e);
        SimpleDateFormat formatter  = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        ObjectMapper mapper =new ObjectMapper();
        mapper.getSerializationConfig().with(formatter);
        String jsonlist = mapper.writeValueAsString(allItems);
        /*
         *   进行时间运算
         *   Date d=new Date();
         *   SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
         *   System.out.println("今天的日期："+df.format(d));
         *   System.out.println("两天前的日期：" + df.format(new Date(d.getTime() - 2 * 24 * 60 * 60 * 1000)));
         *   System.out.println("三天后的日期：" + df.format(new Date(d.getTime() + 3 * 24 * 60 * 60 * 1000)));
         *
         */
//        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格
//        Date d=new Date();
//        System.out.println(df.format(d));// new Date()为获取当前系统时间
//        String e=df.format(new Date(d.getTime()-10*60*1000));
//        System.out.println(e);
        return jsonlist;
    }

}
