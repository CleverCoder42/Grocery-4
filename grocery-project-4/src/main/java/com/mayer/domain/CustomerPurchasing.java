package com.mayer.domain;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.Table;

@Entity
@Table(name="customerPurchasing")
public class CustomerPurchasing {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int purchasingId;
	
	@ManyToOne
	@JoinColumn(name="productId")
	private  Product product;	
	private  int quantity;	
	private  double cost;
	private  double totalAmount;
	private  double discount;
		
	/*
	 * @ManyToOne
	 * 
	 * @JoinColumn(name="customerId") private Customer customer;
	 */
	
	@ManyToOne
	@JoinColumn(name="transactionId")
	private  CustomerTransaction customerTransaction;
	
	 CustomerPurchasing(){}

		/*
		 * public CustomerPurchasing(int purchasingId, Product product, int quantity,
		 * double cost, double totalAmount, double discount, CustomerTransaction
		 * customerTransaction) { super(); this.purchasingId = purchasingId;
		 * this.product = product; this.quantity = quantity; this.cost = cost;
		 * this.totalAmount = totalAmount; this.discount = discount;
		 * this.customerTransaction = customerTransaction; }
		 */


		public CustomerPurchasing(int purchasingId, /*Product product,*/ int quantity, double cost, double totalAmount,
				double discount/* , CustomerTransaction customerTransaction */) {
			super();
			this.purchasingId = purchasingId;
			//this.product = product;
			this.quantity = quantity;
			this.cost = cost;
			this.totalAmount = totalAmount;
			this.discount = discount;
			//this.customerTransaction = customerTransaction;
		}

	public Product getProduct() {
		return product;
	}




	public void setProduct(Product product) {
		this.product = product;
	}

	public CustomerTransaction getCustomerTransaction() {
		return customerTransaction;
	}



	public void setCustomerTransaction(CustomerTransaction customerTransaction) {
		this.customerTransaction = customerTransaction;
	}



	public int getPurchasingId() {
		return purchasingId;
	}

	public void setPurchasingId(int purchasingId) {
		this.purchasingId = purchasingId;
	}


	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
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

	/*
	 * public Customer getCustomer() { return customer; }
	 * 
	 * public void setCustomer(Customer customer) { this.customer = customer; }
	 */

	@Override
	public String toString() {
		return "CustomerPurchasing [purchasingId=" + purchasingId + ", product=" + product + ", quantity=" + quantity
				+ ", cost=" + cost + ", totalAmount=" + totalAmount + ", discount=" + discount + ", customerTransaction=" + customerTransaction + "]";
	}





}
