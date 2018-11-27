package com.web.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.IHouseDao;
import com.web.pojo.House;

@Service("houseService")
@Transactional
public class HouseServiceImpl implements IHouseDao{
	@Resource
	private IHouseDao houseDao;
	
	public IHouseDao getHouseDao() {
		return houseDao;
	}

	public void setHouseDao(IHouseDao houseDao) {
		this.houseDao = houseDao;
	}
	
	
	//遍历
	public List<House> getHouseList() {
		try {
			return houseDao.getHouseList();
     } catch (RuntimeException e) {
         e.printStackTrace();
         throw e;
     }	
	}


	
}
