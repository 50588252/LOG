package com.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.web.pojo.House;
import com.web.service.impl.HouseServiceImpl;

@Controller
public class HouseListAction {
	@Resource
	private HouseServiceImpl houseService;
	
	public HouseServiceImpl getHouseService() {
		return houseService;
	}

	public void setHouseService(HouseServiceImpl houseService) {
		this.houseService = houseService;
	}
	private Logger logger = Logger.getLogger(HouseListAction.class);
	
	//首页遍历
	@RequestMapping("/admin")
	public String helloWorld(){
		System.out.println("HelloWorld");
		return "index";
	}
	/**
	 * 带数据返回后台
	 * 通过modelandview对象封装视图以及数据
	 */
	@RequestMapping("/hello_model")
	public ModelAndView hello_modelandview(){
		System.out.println("通过modelandview传输");
		Map map=new HashMap();
		map.put("name", "yu");
		map.put("password","123");
		ModelAndView view=new ModelAndView("index",map);
		return  view;
	}
	/**
	 * 遍历所有信息
	 * @param request
	 */
	@RequestMapping(value="/list")
	@ResponseBody
	public String getallHouse(){
		List<House> list = houseService.getHouseList();
		System.out.println(list.size());
		return JSONArray.toJSONString(list);	
	}

}
