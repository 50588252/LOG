package com.web.test;

import java.util.ArrayList;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.web.dao.IHouseDao;
import com.web.dao.IUserDao;
import com.web.pojo.House;
import com.web.pojo.User;
import com.web.service.IUserService;
import com.web.service.impl.HouseServiceImpl;

public class test {

    private Logger logger = Logger.getLogger(test.class);
    public void ggg() {
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
             
       System.out.println("开始测试");
		//IHouseDao hs =(IHouseDao) ctx.getBean("houseService");
		IUserService hs =(IUserService) ctx.getBean("userService");
        //List<House> list = new ArrayList<House>(); 
        System.out.println("结果");
        User user=new User();
        user.setUsername("ynx");
        user.setPassword("1234");
        System.out.println(hs.login(user).size());
    }
	public static void main(String[] args) {
		test t=new test();
		System.out.println("???");
		t.ggg();
	}
	
}
