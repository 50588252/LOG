package com.web.dao;

import java.util.List;

import com.web.pojo.User;



public interface IUserDao {
	//用户登录
	public List<User> login(User user);
	
}
