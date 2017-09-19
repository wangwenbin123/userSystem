package com.cn.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * 用户登录控制类
 */
@Controller
public class UserLogonController {

//	@Resource
//	private UserLogonService userLogonService;

    /**
     * 用户登录初始URL
     */
    @RequestMapping(value = "/logonInit")
    public String logonInit() {

        return "logon";
    }

    /**
     * 用户登录操作
     * @param request
     */
    @RequestMapping(value = "/logon")
    public ModelAndView logon(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        //从页面接收用户名，密码
            modelAndView.setViewName("main");
            return modelAndView;
    }

    /**
     * 登出操作
     * @param request
     */
    @RequestMapping(value = "/logonOut")
    public String logonOut(HttpServletRequest request) {

        return "logon";
    }
}
