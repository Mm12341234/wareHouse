package com.wisdomteam.warehouse.controller;

import com.github.pagehelper.PageInfo;
import com.wisdomteam.warehouse.bean.Foods;
import com.wisdomteam.warehouse.service.FoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

@Controller
public class FoodsController {

    @Autowired
    FoodsService foodsService;
    /*
     *    员工添加:
     *    SpringMVC 自动将请求参数和入参对象的属性进行一一绑定；
     *    要求请求参数的名字和javaBean入参的对象里面的属性名是一样的
     *
     */
    //显示增添食物
    @GetMapping("/foods/showAddFood")
    public String getAddFoods(){
        return "Foods/showAddFood";
    }
    //增添食物
    @ResponseBody
    @PostMapping("/foods/addFood")
    public Integer postAddFoods(@RequestParam("foodName") String foodName,
                               @RequestParam("foodTypeId")  Integer foodTypeId){
        Foods foods=new Foods(foodName,foodTypeId);
        //判断是否增添成功
        Integer test=foodsService.addFoods(foods);
        return test;
    }

    //显示食物所有数据
    @PostMapping("/foods/showAllFood")
    public String showAllFood(@RequestParam("currentPage")Integer currentPage, Model model){
        PageInfo<Foods> pageInfo=foodsService.findAllFoods(currentPage,10);
        List<Foods> allItems=pageInfo.getList();
        model.addAttribute("allFoods",allItems);
        model.addAttribute("pageInfo",pageInfo);
//        System.out.println(pageInfo);
        model.addAttribute("currentPage",currentPage);
        return "/Foods/showAllFood";
    }

    //显示手动入库的表单
    //显示增添食物
    @GetMapping("/putIn/putInStorage")
    public String getPutInStorage(){
        return "/PutInStorage/putInStorage";
    }

    //执行增添食物到仓库的功能
    @ResponseBody
    @PostMapping("/putIn/funPutInStorage")
    public  Boolean funPutInStorage(@RequestParam("foodName") String foodName,
                                   @RequestParam("foodNums") Integer foodNums,
                                   @RequestParam("foodTypeId") Integer foodTypeId,
                                   @RequestParam("foodStorageTime") Date foodStorageTime,
                                   @RequestParam("foodHouseId") Integer foodHouseId){
        Foods foods=new Foods(foodName,foodTypeId,20.5,foodNums,20,"woshi",12,foodHouseId,foodStorageTime);
        Integer test=foodsService.putInStorage(foods);
        return true;
    }

    //执行增添食物到仓库的功能
//    @ResponseBody
//    @PostMapping("/putIn/temperature")
//    public String getTemperature(@RequestParam("foodName") String foodName){
//        String temperature=
//        return temperature;
//    }
    //根据食物ID查找
    @PostMapping("/Foods/getFoodsById")
    public String getFoodsById(@RequestParam("Id") Integer Id,Model model){
        Foods foods=foodsService.getFoodsById(Id);
        System.out.println(foods);
        model.addAttribute("foods",foods);
        return "/Foods/getFoodsById";
    }

    //根据日期或者id查询食物
    public String getFoodsByIdOrTime(){
        return "null";
    }

}
