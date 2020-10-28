package com.renthouse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.renthouse.dao.DistrictDao;
import com.renthouse.entity.District;
import com.renthouse.service.DistrictService;
@Service
@Transactional
public class DistrictServerviceImpl implements DistrictService {
	@Autowired
	private DistrictDao districtDao;
	public List<District> getAll() {
	
		return districtDao.getAll();
	}

}
