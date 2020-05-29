
package com.mayer.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mayer.domain.CustomerTransaction;

public interface CustomerTransactionRepository extends JpaRepository<CustomerTransaction, Integer> {

}
