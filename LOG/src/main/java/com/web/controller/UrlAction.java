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
	//首页遍历
	@RequestMapping("/admin")
	public String helloWorld2(){
		System.out.println("HelloWorld");
		return "index";
	}
	
	
	// 做部分网页跳转
	@RequestMapping("/left")
	public String helloWorld() {
		System.out.println("HelloWorld");
		return "files/left";
	}

	// 顶部网页跳转
	@RequestMapping("/top")
	public String top() {
		System.out.println("HelloWorld");
		return "files/top";
	}

	// 主网页跳转
	@RequestMapping("/main")
	public String main() {
		System.out.println("HelloWorld");
		return "files/mainFrame";
	}
	// 客户增加网页跳转
	@RequestMapping("/cus_add")
	public String cus_add() {
		System.out.println("HelloWorld");
		return "files/cus_add";
	}
	// 主客户修改信息跳转
	@RequestMapping("/cus_alter")
	public String cus_alter() {
		System.out.println("HelloWorld");
		return "files/cus_alter";
	}
	// 客户预约信息网页跳转
	@RequestMapping("/cus_order")
	public String cus_order() {
		System.out.println("HelloWorld");
		return "files/cus_order";
	}
	
	// 客户预约信息网页跳转
	@RequestMapping("/order_new")
	public String order_new() {
		System.out.println("HelloWorld");
		return "files/order_new";
	}
	
	// 客户预约信息网页跳转
	@RequestMapping("/order_search")
	public String order_search() {
		System.out.println("HelloWorld");
		return "files/order_search";
	}
	// 客户预约信息网页跳转
	@RequestMapping("/order_change")
	public String order_change() {
		System.out.println("HelloWorld");
		return "files/order_change";
	}
	// 客户预约信息网页跳转
	@RequestMapping("/order_cancel")
	public String order_cancel() {
		System.out.println("HelloWorld");
		return "files/order_cancel";
	}
	// 客户预约信息网页跳转
	@RequestMapping("/order_quit")
	public String order_quit() {
		System.out.println("HelloWorld");
		return "files/order_quit";
	}
}
