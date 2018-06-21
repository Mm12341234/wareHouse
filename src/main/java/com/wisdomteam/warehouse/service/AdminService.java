package com.wisdomteam.warehouse.service;

import com.wisdomteam.warehouse.bean.Admin;
import com.wisdomteam.warehouse.mapper.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

    @Autowired
    AdminMapper adminMapper;

    /*
     *   将方法的运行结果进行缓存，以后要相同的数据，直接从缓存中提取，不用调用方法的
     *
     *   CacheManager管理多个cache组件，对缓存真正CRUD（增、删、查、改）操作在每个cache组件中,每个组件
     *   都有自己唯一的一个名字
     *
     *   几个属性:
     *   cacheName：缓存组件的名字
     *   key: 缓存使用的key，可以用它来指定，默认使用方法参数的值 1-返回值参数
     *
     */
    @Cacheable(cacheNames = "admin")
    public Admin getAdminById(Integer id){
         Admin admin=adminMapper.getAdminById(id);
         return admin;
    }
    //查询用户的基本资料
    public Admin getAdminInfo(String id){
        Admin admin=adminMapper.getAdminInfo(id);
        return admin;
    }
}