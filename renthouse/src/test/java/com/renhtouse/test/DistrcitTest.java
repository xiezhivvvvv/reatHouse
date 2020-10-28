package com.renhtouse.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.renthouse.service.DistrictService;
import com.renthouse.service.HouseService;

public class DistrcitTest {
	@Test 
	public void getAll(){
/*		ApplicationContext context =new ClassPathXmlApplicationContext("beans.xml");
		DistrictService districtService =context.getBean(DistrictService.class);
		System.out.println(districtService.getAll().size());	*/
		
		ApplicationContext context =new ClassPathXmlApplicationContext("beans.xml");
		DistrictService districtService =context.getBean(HouseService.class);
		System.out.println(districtService.getAll().size());	
	}

}
