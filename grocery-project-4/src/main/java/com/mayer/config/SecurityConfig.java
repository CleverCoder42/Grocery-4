package com.mayer.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;




import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	
	  @Autowired UserDetailsService userDetailsService;
	 
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth
		.userDetailsService(userDetailsService)
		//.userDetailsService(customUserDetailsService)
		.passwordEncoder(bCryptPasswordEncoder());
		auth.eraseCredentials(false);
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

	/*	http
       	
        .authorizeRequests()
        	.antMatchers("/resources/**", "/webjars/**","/assets/**").permitAll()
            .antMatchers("/", "/register", "/forgotPwd","/resetPwd").permitAll()
            .antMatchers("/myAccount","/checkout","/orders").authenticated()
            .and()
        .formLogin()
            .loginPage("/login")
            .defaultSuccessUrl("/home")
            .failureUrl("/login?error")
            .permitAll()
            .and()
        .logout()
        	.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
        	.permitAll()
            .and()
            .csrf().disable()
      //  .exceptionHandling().accessDeniedPage("/403");
		.exceptionHandling()
		.accessDeniedHandler(accessDeniedHandler());
		
}*/
		
		 http.authorizeRequests()
		.antMatchers("/resources/**", "/webjars/**","/img/**","/assets/**").permitAll()
		.antMatchers("index.html", "/getUserForm",  "/userName", "/saveUserForm", "/", "/product/index","/allUsers")
		.permitAll() 
		.antMatchers("/profile/**").authenticated()
		.antMatchers("/admin/**").hasRole("ADMIN")
		.antMatchers("/management/**").hasAnyRole("ADMIN", "MANAGER")
		.anyRequest()
		.authenticated()
		.and()
		.formLogin()
		.loginPage("/login").permitAll()
		//.loginPage("/user").permitAll()
		.and()
		.logout()
		//.logoutSuccessUrl("/login?logout")
		.permitAll()// goes to the custom login page .
		.and();
		//.exceptionHandling()
		//.accessDeniedHandler(accessDeniedHandler());
	    http.csrf().disable();
	    http.httpBasic();
	}

	@Bean
	   @Primary
	   BCryptPasswordEncoder bCryptPasswordEncoder(){		
	      BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();		
	      return bCryptPasswordEncoder;
	   }
	String idForBcrypt = "bcrypt";

	@Override
	public void configure(WebSecurity web) {
		web.ignoring().antMatchers("/img/*", "/css/*", "/js/*");
	}

	
	  @Bean public AccessDeniedHandler accessDeniedHandler()
	  { 
		  return new
	 AccessDeniedHandlerImpl(); }
	 

}
