package com.mayer.domain;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
//import javax.persistence.JoinTable;
import javax.persistence.Table;



@Entity
@Table(name="cart")
public class Cart {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cartId;
	private  int quantity;	
	@ManyToOne
	@JoinColumn(name="customerId")
	private Customer customer;
	
	@ManyToOne
	@JoinColumn(name="productId")
	private Product product;
	
	public Cart() {
		super();
	}



	public Cart(int cartId, int quantity, Customer customer, Product product) {
		super();
		this.cartId = cartId;
		this.quantity = quantity;
		this.customer = customer;
		this.product = product;
	}



	public int getCartId() {
		return cartId;
	}



	public void setCartId(int cartId) {
		this.cartId = cartId;
	}



	public int getQuantity() {
		return quantity;
	}



	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}



	public Customer getCustomer() {
		return customer;
	}



	public void setCustomer(Customer customer) {
		this.customer = customer;
	}



	public Product getProduct() {
		return product;
	}



	public void setProduct(Product product) {
		this.product = product;
	}



	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", quantity=" + quantity + ", customer=" + customer + ", product=" + product
				+ "]";
	}












	
}
