package com.web.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;



public class House implements Serializable{

	// Fields

	private Integer id;
	private String title;
	private String description;
	private Integer price;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@JSONField(format="yyyy-MM-dd")
	private Date pubdate;
	private Short floorage;
	private String contact;
	private String picpath;
	private int user_id;
	private int type_id;
	private int street_id;
	private User user;
	
	private List<User> list=new ArrayList<User>();
	
	
	public List<User> getList() {
		return list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}

	public int getStreet_id() {
		return street_id;
	}

	public void setStreet_id(int street_id) {
		this.street_id = street_id;
	}

	public int getType_id() {
		return type_id;
	}

	public void setType_id(int type_id) {
		this.type_id = type_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Date getPubdate() {
		return pubdate;
	}

	public void setPubdate(Date pubdate) {
		this.pubdate = pubdate;
	}

	public Short getFloorage() {
		return floorage;
	}

	public void setFloorage(Short floorage) {
		this.floorage = floorage;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getPicpath() {
		return picpath;
	}

	public void setPicpath(String picpath) {
		this.picpath = picpath;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	






}