package com.mayer.service;

import javax.mail.MessagingException;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.MailException;

import org.springframework.mail.javamail.JavaMailSender;

import org.springframework.mail.javamail.MimeMessageHelper;

import org.springframework.stereotype.Component;

@Component
public class EmailService {

	@Autowired
	public JavaMailSender emailSender;

	public void sendEmail(String to, String subject, String content) 
	{
		try {
			MimeMessage mimeMessage = emailSender.createMimeMessage();

			MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "UTF-8");
			helper.setTo(to);
			helper.setSubject(subject);
			helper.setText(content, true);
			emailSender.send(helper.getMimeMessage());
		} catch (MailException | MessagingException e) {
			System.out.println(e + ("Unable to send email"));
		}

	}
}
