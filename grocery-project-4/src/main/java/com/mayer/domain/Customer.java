package com.mayer.domain;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotEmpty;

import java.util.Set;

import javax.persistence.Entity;



@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int customerId;
	@NotEmpty(message="Customer Name can nott be empty")
	private String firstName;
	private String lastName;
	@Digits(integer=3, fraction=0, message="Phone Number accepts only digits.")
	private int phoneNumber;
	private String email;
	private String password;
	private String userName;
	
	@OneToMany(mappedBy="customer")
	private Set<Cart>carts;
	/*
	 * @OneToMany(mappedBy="customer") private
	 * Set<CustomerPurchasing>customerPurchasings;
	 */

	public Customer() {
		super();
	}
	public Customer(int customerId, String firstName, String lastName, int phoneNumber, String email) {
		super();
		this.customerId = customerId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phoneNumber = phoneNumber;
		this.email = email;

	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String setAddresType(String addresType) {
		return addresType ;
	}
	
	public String getPassword() {

		return password;

	}

	public void setPassword(String password) {

		this.password = password;

	}
	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", phoneNumber=" + phoneNumber + ", email=" + email +  "]";
	}


	
	
}