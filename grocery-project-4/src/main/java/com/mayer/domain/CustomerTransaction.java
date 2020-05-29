package com.mayer.domain;


import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="transaction")
public class CustomerTransaction {

	
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int transactionId;
	private String customerMobile;
	private double totalAmount;
	private String billingAddress;
	@OneToMany(mappedBy="customerTransaction")
	private Set<CustomerPurchasing>customerPurchasings;	
	
	
	//private String transactionDate;
	//private double tax;
	//private double discount;

	//private String city;	
	//private String cardNumber;
	//private String cardName;
	//private String cardCVV;
	
	
	public CustomerTransaction(){}


	public CustomerTransaction(int transactionId, String customerMobile, double totalAmount, String billingAddress) {
			/*Set<CustomerPurchasing> customerPurchasings*/
		super();
		this.transactionId = transactionId;
		this.customerMobile = customerMobile;
		this.totalAmount = totalAmount;
		this.billingAddress = billingAddress;
		/*this.customerPurchasings = customerPurchasings;*/
	}


	public int getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}

	public String getCustomerMobile() {
		return customerMobile;
	}

	public void setCustomerMobile(String customerMobile) {
		this.customerMobile = customerMobile;
	}

	public double getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}


	public String getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(String billingAddress) {
		this.billingAddress = billingAddress;
	}


	public Set<CustomerPurchasing> getCustomerPurchasings() {
		return customerPurchasings;
	}

	public void setCustomerPurchasings(Set<CustomerPurchasing> customerPurchasings) {
		this.customerPurchasings = customerPurchasings;
	}


	@Override
	public String toString() {
		return "CustomerTransaction [transactionId=" + transactionId + ", customerMobile=" + customerMobile
				+ ", totalAmount=" + totalAmount + ", billingAddress=" + billingAddress + ", customerPurchasings="
				+ customerPurchasings + "]";
	}

	
}
