package com.web.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.service.impl.HouseServiceImpl;

@Controller
public class UrlAction {
	@Resource
	private HouseServiceImpl houseService;
	
	public HouseServiceImpl getHouseService() {
		return houseService;
	}

	public void setHouseService(HouseServiceImpl houseService) {
		this.houseService = houseService;
	}

	// 网页跳转
	@RequestMapping("/left")
	public String helloWorld() {
		System.out.println("HelloWorld");
		return "files/left";
	}

	// 网页跳转
	@RequestMapping("/top")
	public String top() {
		System.out.println("HelloWorld");
		return "files/top";
	}

	// 网页跳转
	@RequestMapping("/main")
	public String main() {
		System.out.println("HelloWorld");
		return "files/mainFrame";
	}
}
