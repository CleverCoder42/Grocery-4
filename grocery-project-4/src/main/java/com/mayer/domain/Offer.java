package com.mayer.domain;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity

public class Offer {
	

		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private int offerId;
		private String offerName;
		private String status;
		private double totalAmount;
		private double discount;
		private int balance;		
		@ManyToOne
		@JoinColumn(name="productId")
		private Product product;

	Offer(){}



	public Offer(int offerId, String offerName, String status, double totalAmount, double discount, int balance,
			Product product) {
		super();
		this.offerId = offerId;
		this.offerName = offerName;
		this.status = status;
		this.totalAmount = totalAmount;
		this.discount = discount;
		this.balance = balance;
		this.product = product;
	}



	public int getOfferId() {
		return offerId;
	}

	public void setOfferId(int offerId) {
		this.offerId = offerId;
	}

	public String getOfferName() {
		return offerName;
	}

	public void setOfferName(String offerName) {
		this.offerName = offerName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}



	public Product getProduct() {
		return product;
	}



	public void setProduct(Product product) {
		this.product = product;
	}






}
