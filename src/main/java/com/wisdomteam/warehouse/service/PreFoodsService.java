package com.wisdomteam.warehouse.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wisdomteam.warehouse.bean.Foods;
import com.wisdomteam.warehouse.bean.PreFoods;
import com.wisdomteam.warehouse.mapper.PreFoodsMapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PreFoodsService {

    @Autowired
    PreFoodsMapper preFoodsMapper;

    //查询自动入库的信息（模拟）
    public PageInfo<PreFoods> showPreFoods(int currentPage, int pageSize){
        //设置分页
        PageHelper.startPage(currentPage,pageSize);
        //获取全部数据
        List<PreFoods> allItems=preFoodsMapper.showPreFoods();
        //取分页后结果
        PageInfo<PreFoods> pageInfo=new PageInfo<>(allItems);
//        long total = pageInfo.getTotal();
//        System.out.println("总记录数="+total);
//        int pages = pageInfo.getPages();
//        System.out.println("总页数="+pages);
//        int pageize = pageInfo.getPageSize();
//        System.out.println("pageSize="+pageize);
        return pageInfo;
    }
}
