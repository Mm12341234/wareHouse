package com.wisdomteam.warehouse.mapper;

import com.wisdomteam.warehouse.bean.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/*
 * Admin的信息操作(UCRD操作)
 */
@Mapper
public interface AdminMapper {

    //查询是否有该管理员，防止注入
    @Select("select * from admin where adminId=#{id}")
    public Admin getAdminById(Integer id);

    //查询管理的基本资料
    public Admin getAdminInfo(String id);


}
