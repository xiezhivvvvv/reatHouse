package com.renthouse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.renthouse.entity.District;
import com.renthouse.entity.House;
import com.renthouse.entity.Photo;
import com.renthouse.entity.User;
import com.renthouse.service.DistrictService;
import com.renthouse.service.HouseService;


@Controller
@SessionAttributes(value={"user"}) 
public class HomeController {
	@Autowired
	private DistrictService districtService;
	@Autowired
	private HouseService houseService;

	@RequestMapping("/page/register")
	public String register(){
		return "page/register";
	}
	
	@RequestMapping("/getAll")
	@ResponseBody
	public List<District> getAll(){
		
		return districtService.getAll();
		
	}
	@RequestMapping("/map")
	public String map(){
		return "map";			
	}
	//详情
	@RequestMapping("/page/house")
	public String pagehead( Model model,ModelMap modelMap){
	/*	int userid=12;*/
		List<House> houses =houseService.getAll();
	    model.addAttribute("houses",houses);
	    
	    //加载筛选条件
	    List<District> district= districtService.getAll();
	    model.addAttribute("district",district);
//	    User user = houseService.getLoginUser(userid);
//	    model.addAttribute("user",user);
//	    model.addAttribute("userid",userid);
//	    model.addAttribute("user", "bbb");
	    //session
/*	   String user =  (String) modelMap.get("user"); 
	   System.out.println("huangying"+user);
	   if(user!=null){
		   System.out.println("huangying");
		    model.addAttribute("user",user);
	   }*/
	    

		return "page/house";			
	}
	
	@RequestMapping("/page/details")
	public String details(int houseid,int userid,Model model){
	
		House house =houseService.getHouseById(houseid);
		if(userid>=1){
			System.out.println(userid);
			User user = houseService.getLoginUser(userid);
			   model.addAttribute("user",user);
			   model.addAttribute("userid",userid);
			  
		}
		
	
	
	    Photo photo = houseService.getPhoto(houseid);
	    model.addAttribute("photo", photo);
        //传user house
	 
		model.addAttribute("house",house);	
		model.addAttribute("houseid",houseid);
		return "page/details";
		
		
	}
	@RequestMapping("/page/Login")
	public String login(){
		
		return "page/Login";
		
	}
	
	//看合同
	@RequestMapping("/page/updateuserlist")
	public String showhetong(int houseid,int userid, Model model){
		House house =houseService.getHouseById(houseid);
		User user = houseService.getLoginUser(userid);
	    model.addAttribute("user",user);
	    model.addAttribute("house",house);
	    model.addAttribute("userid",userid);
		model.addAttribute("houseid",houseid);
			return "page/updateuserlist";
	
	}
	@RequestMapping("/page/LoginUser")
	public String login(String username,String password,Model model){

		User u =new User();
		u.setUsername(username);
		u.setPassword(password);
		User user =houseService.getLoginUser(13);
	    model.addAttribute("user", user);
	    model.addAttribute("userid", 13);
	    //重新獲取首頁數據
		List<House> houses =houseService.getAll();
	    model.addAttribute("houses",houses);
	    
	    //加载筛选条件
	    List<District> district= districtService.getAll();
	    model.addAttribute("district",district);

	    
	    
        return "page/house";
        // 底层会存储到request域对象中
  
	}
	//看合同
	@RequestMapping("/page/showhetong")
	public String showhetong(){
		
	
		
		return "page/showhetong";
	}
	//租房
	@RequestMapping("/page/yes")
	public String yes(int houseid,int userid,Model model){
		//用户id
		//房子id
		//状态id
		//最后，改一改，刷新房屋列表
		

		/*User user =houseService.getLoginUser(13);*/
		System.out.println(userid+";"+houseid);
		houseService.updateHouse(houseid,userid);
		House house =houseService.getHouseById(houseid);
		User user = houseService.getLoginUser(userid);
	    model.addAttribute("user",user);
	    model.addAttribute("house",house);
	    model.addAttribute("userid",userid);
		model.addAttribute("houseid",houseid);
		return "page/yes";
	}


	
	




}
