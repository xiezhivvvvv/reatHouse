package com.renthouse.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.renthouse.entity.House;
import com.renthouse.entity.Photo;
import com.renthouse.entity.User;

public interface HouseDao {
	public List<House> getAll();
	
	public House getHouseById(int id);
	public Photo getPhoto(int id);
	public User getLoginUser(@Param("username")String username,@Param("password")String password);
	public User getLoginUser(User u);

	public User getLoginUser(int i);

	public void updateHouse(int houseid, int userid);
}
