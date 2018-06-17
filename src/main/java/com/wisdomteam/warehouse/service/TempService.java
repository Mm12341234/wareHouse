package com.wisdomteam.warehouse.service;

import com.wisdomteam.warehouse.mapper.TempMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

@Service
public class TempService {

    @Autowired
    TempMapper tempMapper;

    //执行查询食物最佳温度
    public String getTemperature(String foodName){
        String temperature=tempMapper.getTemperature(foodName);
        return temperature;
    }



}
