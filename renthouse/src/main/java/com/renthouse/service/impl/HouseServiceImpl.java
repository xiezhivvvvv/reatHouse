package com.renthouse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.renthouse.dao.HouseDao;
import com.renthouse.entity.House;
import com.renthouse.entity.Photo;
import com.renthouse.entity.User;
import com.renthouse.service.HouseService;

@Service
public class HouseServiceImpl implements HouseService {
	@Autowired
	private HouseDao houseDao;
	public List<House> getAll() {
		
		return houseDao.getAll();
	}
	public House getHouseById(int id) {
		
		return houseDao.getHouseById(id);
	}
	public Photo getPhoto(int id) {
		
		return houseDao.getPhoto(id);
	}
	public User getLoginUser(String username, String password) {
		return houseDao.getLoginUser(username, password);
	}
	public User getLoginUser(User u) {
		return houseDao.getLoginUser(u);

	}
	public User getLoginUser(int i) {
		return houseDao.getLoginUser(i);
	}
	public void updateHouse(int houseid, int userid) {
		 houseDao.updateHouse(houseid,userid);
		
	}
	

}
