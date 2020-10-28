package com.renthouse.controller;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
@Controller
public class TestController {
    @RequestMapping(value={"/page/test"})
    public String page(){
    	
    	
    	return "page/test";
    }
    /**
     * SessionAttributes的注解
     * @return

	@RequestMapping(value="/page/set")
    public String testSessionAttributes(HttpServletRequest request){
    	
    	 HttpSession session = request.getSession();
        
         Enumeration<String> a = session.getAttributeNames();
         System.out.println(a);
  
        return "success";
    }

    /**
     * 获取值
     * @param modelMap
     * @return
     */
    @RequestMapping(value="/page/get")
    public String getSessionAttributes(HttpServletRequest request){
    	 HttpSession session = request.getSession();
          session.setAttribute("user", "bbb");
         Enumeration<String> a = session.getAttributeNames();
        System.out.println(a);
        return "success";
    }

    /**
     * 清除
     * @param status
     * @return
     */
    @RequestMapping(value="/page/del")
    public String delSessionAttributes(SessionStatus status){
        System.out.println("getSessionAttributes...");
        status.setComplete();
        return "success";
    }


}
