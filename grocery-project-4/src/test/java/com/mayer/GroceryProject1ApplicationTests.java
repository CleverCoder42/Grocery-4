package com.mayer;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.mayer.service.EmailService;

@SpringBootTest
class GroceryProject1ApplicationTests {

	/*
	 * @Test void contextLoads() { }
	 */

	@Autowired
	EmailService emailService;

	@Test
	public void testSendEmail() {
		emailService.sendEmail("synergisticsessionusc11@gmail.com", "testEmailSubject", "This is a test email from t");
	}

}
