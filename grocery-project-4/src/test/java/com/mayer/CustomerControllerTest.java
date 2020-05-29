package com.mayer;

import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import static org.junit.Assert.assertEquals;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;

import com.mayer.contoller.CustomerControler;
import com.mayer.service.CustomerService;
import com.mayer.service.CustomerServiceImpl;

@RunWith(MockitoJUnitRunner.class)
public class CustomerControllerTest {

	@Mock
	CustomerControler customerControler;

	@InjectMocks
	CustomerServiceImpl customerService;

	@Test 
	public void testController() {
	  
		/*
		 * Mockito.when(CustomerControler.allCustomers().thenReturn(new
		 * ResponseEntity<Object>("tested", HttpStatus.OK)); ResponseEntity<Object>
		 * responseEntity = CustomerControler.allCustomers(); assertEquals("OK",
		 * responseEntity.getStatusCode().name());
		 */ 
	 }

}
