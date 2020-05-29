package com.mayer.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mayer.domain.Customer;
import com.mayer.domain.CustomerTransaction;
import com.mayer.repository.CustomerRepository;


public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	CustomerRepository customerRepository;

	@Override
	public Customer saveCustomer(Customer c) {
		
		return customerRepository.save(c);
	}

	@Override
	public List<Customer> getAll() {
	return	customerRepository.findAll();
		 
	}

	@Override
	public void deleteCustomer(int customerId) {
		customerRepository.deleteById(customerId);

	}

	@Override
	public Customer updateCustomer(int customerId, Customer c) {
		return customerRepository.save(c);
		
	}
	@Override
	public Customer getCustomerByEmail(String email) {
		return customerRepository.findByEmail(email);
	}
	public Customer createCustomer(Customer customer) {
		return customerRepository.save(customer);
	}
	public Optional<Customer> getCustomerById(int customerId) {
		return customerRepository.findById(customerId);
	}
	/*
	 * public List<CustomerTransaction> getCustomerOrders(String email) { return
	 * customerRepository.getCustomerTransaction(email); }
	 */

}
