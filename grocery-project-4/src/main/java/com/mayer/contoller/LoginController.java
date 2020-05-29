package com.mayer.contoller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
/* @RequestMapping("/") */
public class LoginController {
	
	
	/*
	 * @GetMapping("login") public String doLogin(){
	 * System.out.println("=============LOGIN PAGE==========="); return "login"; }
	 */
	  
	 
	
	@GetMapping(value="/userName" )
	@ResponseBody 
	public String loggedInUserName(Principal principal, HttpServletRequest req){
		//return principal.getName();
		System.out.println("Logged in user Principal object: "+req.getUserPrincipal().toString());
		return req.getUserPrincipal().getName();
	}
	


}
