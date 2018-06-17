package com.wisdomteam.warehouse.mapper;

import com.wisdomteam.warehouse.bean.PreFoods;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface PreFoodsMapper {

//    显示自动入库的数据（模拟）
    @Select("select * from prefoods")
    public List<PreFoods> showPreFoods();
}
