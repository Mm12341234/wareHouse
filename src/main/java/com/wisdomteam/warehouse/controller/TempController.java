package com.wisdomteam.warehouse.controller;

import com.wisdomteam.warehouse.service.TempService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TempController {

    @Autowired
    TempService tempService;
    //执行查询食物最佳温度
    @ResponseBody
    @PostMapping("/temperature/getTemperature")
    public String getTemperature(@RequestParam("foodName") String foodName){

        String temperature=tempService.getTemperature(foodName);
        temperature=temperature+"°C";
//        System.out.println(temperature);
        return temperature;
    }
}
