package com.mayer.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mayer.repository.UserRepository;
import com.mayer.domain.Role;

@Service
@Transactional
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
		System.out.println("===========UserDetailsServiceImpl.loadUserByUsername(String name)========");
		com.mayer.domain.User user = userRepository.findByName(name);
		System.out.println("USER!!!: " + user.getName() + ", " + user.getPassword());
		System.out.println("Rolse of the user: " + user.getRoles().toString());

		Set<GrantedAuthority> ga = new HashSet<>();
		for (Role role : user.getRoles()) {
			ga.add(new SimpleGrantedAuthority(role.getName()));
		}

		return new org.springframework.security.core.userdetails.User(user.getName(), user.getPassword(), ga);
	}

}
