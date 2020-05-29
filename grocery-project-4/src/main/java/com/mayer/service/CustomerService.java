package com.mayer.service;

import java.util.List;

import com.mayer.domain.Customer;

public interface CustomerService {

	public Customer saveCustomer(Customer c);

	public List<Customer> getAll();

	public void deleteCustomer(int customerId);

	public Customer updateCustomer(int customerId, Customer c);

	public Customer getCustomerByEmail(String email);
	public Customer createCustomer(Customer customer);
	               

}
