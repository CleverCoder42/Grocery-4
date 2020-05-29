package com.mayer.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mayer.domain.Cart;


public interface CartRepository extends JpaRepository<Cart, Integer> {

}
