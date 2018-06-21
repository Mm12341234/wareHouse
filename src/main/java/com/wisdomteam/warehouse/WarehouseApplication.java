package com.wisdomteam.warehouse;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;

@EnableScheduling  //开启基于注解的定时器
@EnableAsync   //开启基于注解的定时器
@MapperScan(value="com.wisdomteam.warehouse.mapper")
@SpringBootApplication
public class WarehouseApplication {

    public static void main(String[] args) {
        SpringApplication.run(WarehouseApplication.class, args);
    }
}
