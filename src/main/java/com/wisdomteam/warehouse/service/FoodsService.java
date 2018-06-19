package com.wisdomteam.warehouse.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wisdomteam.warehouse.bean.Foods;
import com.wisdomteam.warehouse.mapper.FoodsMapper;
import com.wisdomteam.warehouse.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

@Service
public class FoodsService {

    @Autowired
    FoodsMapper foodsMapper;

    //添加食物
    public int addFoods(Foods foods){

        Integer test=foodsMapper.addFoods(foods);
        return test;
    }
    //查找全部食物
    public PageInfo<Foods> findAllFoods(int currentPage, int pageSize){
        //设置分页
        PageHelper.startPage(currentPage,pageSize);
        //获取全部数据
        List<Foods> allItems=foodsMapper.getAllFoods();
//        System.out.println("21121212"+allItems+"121212");
        //取分页后结果
        PageInfo<Foods> pageInfo=new PageInfo<>(allItems);
        long total = pageInfo.getTotal();
        System.out.println("总记录数="+total);
        int pages = pageInfo.getPages();
        System.out.println("总页数="+pages);
        int pageize = pageInfo.getPageSize();
        System.out.println("pageSize="+pageize);
//        int countNums = allItems.size();            //总记录数
//        PageBean<Foods> pageData = new PageBean<>(currentPage, pageSize, countNums);
//        pageData.setItems(allItems);
        return pageInfo;
//        return allItems;
    }

    //执行增添食物到仓库的功能
    public int putInStorage(Foods foods){

        Integer test=foodsMapper.putInStorage(foods);
        return test;
    }

    //根据ID查找食物
    public Foods getFoodsById(Integer id){

        Foods foods=foodsMapper.getFoodsById(id);
        return foods;
    }

}
