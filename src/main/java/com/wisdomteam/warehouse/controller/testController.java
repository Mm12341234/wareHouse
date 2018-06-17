package com.wisdomteam.warehouse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

//@Controller
public class testController {

    @GetMapping("/index")
    public String login(){
        return "index";
    }
}
