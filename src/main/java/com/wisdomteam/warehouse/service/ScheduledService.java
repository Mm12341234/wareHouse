package com.wisdomteam.warehouse.service;

import com.wisdomteam.warehouse.mapper.FoodTemperatureMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class ScheduledService {

    @Autowired
    FoodTemperatureMapper foodTemperatureMapper;

    @Scheduled(cron="0/10 * * * * MON-SAT")
    public void hello(){

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格
        Date d=new Date();
        System.out.println(df.format(d));// new Date()为获取当前系统时间
        String data=df.format(d);

//        获取一个随机温度
        int x=2+(int)(Math.random()*8);
        foodTemperatureMapper.addFoodTemperature(x,data);
    }

}
