package com.mayer.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mayer.domain.CustomerPurchasing;


public interface PurchaseRepository extends JpaRepository<CustomerPurchasing, Integer> {

}
