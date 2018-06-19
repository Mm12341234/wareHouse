package com.wisdomteam.warehouse.mapper;

import com.wisdomteam.warehouse.bean.Foods;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import java.util.Collection;
import java.util.List;

public interface FoodsMapper {

    //增添食品
    @Options(useGeneratedKeys=true,keyProperty="id")
    @Insert("insert into foods(foodName,foodTypeId,foodPrice) values (#{foodName},#{foodTypeId},#{foodPrice})")
    public int addFoods(Foods foods);

    //搜索全部的食物
//    @Select("select * from foods")
    public List<Foods> getAllFoods();

    //增添食物到仓库
    @Insert("insert into foods(foodName,foodTypeId,foodNums,foodStorageTime,foodHouseId)" +
            " values(#{foodName},#{foodTypeId},#{foodNums},#{foodStoragetime},#{foodHouseId})")
    public int putInStorage(Foods foods);

    //根据食物id查找
    public Foods getFoodsById(Integer id);
}
