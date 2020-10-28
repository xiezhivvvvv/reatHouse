package com.renthouse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeLoginController {
	//登录
	@RequestMapping("login")
	public String login(){
		//登录或注册
		
		if("a".equals("a")){
			
			 return "redirect:/xxx/toController";//重定向
			
		}else{
			
			return null;
		}

	
	}
	
	//注册
	@RequestMapping("register")
	public String register(){
		//账户是否存在
		if("a".equals("a")){
			
			 return "redirect:/xxx/toController";//重定向
			
		}else{
			
			return null;
		}
		

	}
}
