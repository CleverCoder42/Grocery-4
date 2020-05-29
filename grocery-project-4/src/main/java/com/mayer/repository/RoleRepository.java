package com.mayer.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mayer.domain.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
	//public Role findByRole(String role);

}
