package com.wisdomteam.warehouse.controller;

import com.wisdomteam.warehouse.bean.Admin;
import com.wisdomteam.warehouse.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class AdminController {

    @Autowired
    AdminService adminService;

    //登录验证
    @ResponseBody
    @PostMapping("/admin")
    public Boolean logincheck(@RequestParam("adminId") Integer adminId,
                              @RequestParam("adminPassword") String password,
                              HttpSession session){
        Admin admin=adminService.getAdminById(adminId);
//        System.out.println(admin);
        if(admin==null){
            return false;
        }
        if(admin.getAdminPassword().equals(password)){
            session.setAttribute("AdminId",adminId);
            return true;
        }
        return false;
    }
    @GetMapping({"/login","/"})
    public String login(){
        return "login";
    }
     //
    @GetMapping("/warehouse")
    public String tiaozhuan(){
        return "warehouse";
    }

}
