package com.mayer.utilities;

import java.util.Collection;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.ui.Model;

public class Utilites {
	public static Model getPrincipal(Model model){
		System.out.println("Controller.getPrincipal(...).........");
		
		String userName = "";
		String password ="";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Object principal = auth.getPrincipal();
		
		Collection<? extends GrantedAuthority>  gaList = auth.getAuthorities();
		if(principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
			password = ((UserDetails) principal).getPassword();
			
			model.addAttribute("user", userName);
			model.addAttribute("password", password);
			model.addAttribute("gaList", gaList);
		}
		System.out.println("user: "+userName +"  password:"+ password + "  gaList:"+gaList );
		return model;
	}
	
}
