package com.wisdomteam.warehouse.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wisdomteam.warehouse.bean.FoodTemperature;
import com.wisdomteam.warehouse.service.FoodTemperatureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
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

    //从后台异步加载，真正获取食物温度的数据
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


}
