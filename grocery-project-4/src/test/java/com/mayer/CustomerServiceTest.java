package com.mayer;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import com.mayer.domain.Customer;
import com.mayer.repository.CustomerRepository;
import com.mayer.service.CustomerServiceImpl;

@RunWith(MockitoJUnitRunner.class)
public class CustomerServiceTest {

	@InjectMocks
	CustomerServiceImpl customerService;

	@Mock
	CustomerRepository customerRepository;

	/*
	 * @Test public void testGetAllProducts() { List<Customer> customres = new
	 * ArrayList<>(); customres.add(new Customer(1, "Alex", "White", 123,
	 * "ok@gmail.com", "adress")); //customres.add(new Customer(2, "Mark", "Blaeik",
	 * 345, "mk@gmail.com", "adress"));
	 * Mockito.when(customerRepository.findAll()).thenReturn(customres);
	 * List<Customer> customers = customerService.getAll();
	 * System.out.println(customers.size()); //assertTrue(customers.size() == 2); }
	 */
}
