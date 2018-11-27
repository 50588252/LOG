package com.web.service;

import java.util.List;

import com.web.pojo.User;

public interface IUserService {
	//用户登陆
	public List<User> login(User user);
	//用户注册
	public boolean  register(User user);
}
