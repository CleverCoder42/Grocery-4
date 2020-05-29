package com.mayer.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mayer.domain.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {
	Customer findByEmail(String email);
	

}
