package com.mayer.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mayer.domain.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	  public User findByName(String name);
}
