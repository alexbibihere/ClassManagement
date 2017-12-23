package com.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/7/14.
 */

@Controller
public class pageController {

    @RequestMapping("/")
    public String indexController(){
        return "index";
    }

    @RequestMapping("/{page}")
    public String PageController(@PathVariable String page){

        return  page;
    }

}
