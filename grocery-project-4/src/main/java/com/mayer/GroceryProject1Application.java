package com.mayer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@EnableAspectJAutoProxy  
@SpringBootApplication
public class GroceryProject1Application {

	public static void main(String[] args) {
		SpringApplication.run(GroceryProject1Application.class, args);
		System.out.println("=============4 -1!!!--VERSION GROCERY APP =======MASTER==============");
		System.out.println("New comment >> 01-11-2021-1 <<);
	}
}