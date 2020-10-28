package com.renthouse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.renthouse.entity.District;
import com.renthouse.service.DistrictService;

@Controller
public class AdminController {
	@Autowired
	private DistrictService districtService;
	



}
