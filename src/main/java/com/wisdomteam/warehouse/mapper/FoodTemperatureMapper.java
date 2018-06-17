package com.wisdomteam.warehouse.mapper;

import com.wisdomteam.warehouse.bean.FoodTemperature;
import org.apache.ibatis.annotations.Select;

import java.util.Collection;
import java.util.List;

public interface FoodTemperatureMapper {

    //根据id查询某种食物的温度变化
    @Select("select * from foodtemperature where foodId=#{foodId}")
    public List<FoodTemperature> getFoodTemperature(Integer foodId);
}
