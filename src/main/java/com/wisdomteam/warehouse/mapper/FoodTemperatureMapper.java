package com.wisdomteam.warehouse.mapper;

import com.wisdomteam.warehouse.bean.FoodTemperature;
import org.apache.ibatis.annotations.Select;

import java.util.Collection;
import java.util.List;

public interface FoodTemperatureMapper {

    //根据id查询某种食物的温度变化
    @Select("select * from foodtemperature where foodId=#{foodId}")
    public List<FoodTemperature> getFoodTemperature(Integer foodId);

    /*
     *   这个是根据食物的id，包括时间段，
     *   实时程度：10分钟，1个小时，1天
     */
    public List<FoodTemperature> getFoodTemperatureByTime(Integer foodId,String DataTimeArange);

    /*
     *    往数据库增添数据，为定时器服务
     */
    public void addFoodTemperature(double temperature,String data);
}
