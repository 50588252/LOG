package com.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.pojo.User;
import com.web.service.impl.HouseServiceImpl;
import com.web.service.impl.UserServiceImpl;

@Controller
public class UserAction {
	@Resource
	private UserServiceImpl userService;	
	public UserServiceImpl getUserService() {
		return userService;
	}
	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}
	//跳转登陆
	@RequestMapping("/login")
	public String login(){
		System.out.println("登陆~~~");
		return "login";
	}
	//跳转登陆
	@RequestMapping("/lg")
	@ResponseBody
	public String login2(@ModelAttribute(value="us") User us) {
		User user=new User();
		user.setUsername(us.getUsername());
		user.setPassword(us.getPassword());
		//userService.login(user);
		if (userService.login(user).size()!=0) {
			return "2";
		}else {
			return "1";
		}
	}
}
