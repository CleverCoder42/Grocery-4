package com.mayer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.mayer.domain.User;
import com.mayer.repository.UserRepository;

public class UserServiceImpl implements UserService {

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired
	UserRepository userRepository;

	@Override
	public void save(User user) {
		System.out.println("UserService =====saved user: " + user);
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		userRepository.save(user);
	}

	@Override
	public List<User> getAll() {

		return userRepository.findAll();
	}

	@Override
	public void deleteUser(int uID) {
		userRepository.deleteById(uID);

	}

	@Override
	public User updateUser(int uID, User u) {
		return userRepository.save(u);
	}

	@Override
	public User findByName(String name) {
		return userRepository.findByName(name);
	}

	@Override
	public boolean existsById(int id) {

		return userRepository.existsById(id);
	}
}
