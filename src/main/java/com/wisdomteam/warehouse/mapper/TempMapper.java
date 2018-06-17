package com.wisdomteam.warehouse.mapper;

import org.apache.ibatis.annotations.Select;

public interface TempMapper {

    //查询食品的最佳存储温度
    @Select("select temperature from Storagetemperature where foodName=#{foodName}")
    public String getTemperature(String foodName);
}
