package com.wisdomteam.warehouse.controller;

import com.github.pagehelper.PageInfo;
import com.wisdomteam.warehouse.bean.Foods;
import com.wisdomteam.warehouse.bean.PreFoods;
import com.wisdomteam.warehouse.service.PreFoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class PreFoodsController {

    @Autowired
    PreFoodsService preFoodsService;

    //执行自动入库的功能
    @PostMapping("/putIn/autoPutInStorage")
    public String funAutoPutInStorage(@RequestParam("currentPage")Integer currentPage, Model model){
        PageInfo<PreFoods> pageInfo=preFoodsService.showPreFoods(currentPage,10);
        List<PreFoods> allItems=pageInfo.getList();
        model.addAttribute("allFoods",allItems);
        model.addAttribute("pageInfo",pageInfo);
        System.out.println(pageInfo);
        model.addAttribute("currentPage",currentPage);
        return "/PutInStorage/autoPutInStorage";
    }
}
