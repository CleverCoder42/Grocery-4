package com.mayer.service;

import java.util.List;

import com.mayer.domain.User;

public interface UserService {

	public void save(User u);

	public List<User> getAll();

	public void deleteUser(int uID);

	public User updateUser(int uID, User u);

	public User findByName(String name);

	public boolean existsById(int id);

}
