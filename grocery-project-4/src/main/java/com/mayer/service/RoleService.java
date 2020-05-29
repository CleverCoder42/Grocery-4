package com.mayer.service;

import java.util.List;

import com.mayer.domain.Role;

public interface RoleService {
	Role findById(long id);

	Role save(Role role);

	List<Role> findAll();

}
