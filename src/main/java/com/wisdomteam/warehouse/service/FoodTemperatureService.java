package com.wisdomteam.warehouse.service;

import com.wisdomteam.warehouse.bean.FoodTemperature;
import com.wisdomteam.warehouse.mapper.FoodTemperatureMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

@Service
public class FoodTemperatureService {

    @Autowired
    FoodTemperatureMapper foodTemperatureMapper;

    //获取食物的温度
    public List<FoodTemperature> getFoodTemperature(Integer foodId){
        List<FoodTemperature> allItem=foodTemperatureMapper.getFoodTemperature(foodId);
        return allItem;
    }

    /*
     *  根据食物的ID和时间范围查询食品的温度
     */
    public List<FoodTemperature> getFoodTemperatureByTime(Integer foodId,String timeRange){
        List<FoodTemperature> allItem=foodTemperatureMapper.getFoodTemperatureByTime(foodId,timeRange);
        return allItem;
    }



}
