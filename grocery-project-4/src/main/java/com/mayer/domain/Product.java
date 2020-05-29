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


//import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="products")
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private  int productId;
	private  String name;
	private  int quantity;
	
//	@NotEmpty(message="Product description can not be empty")
	private  String description;
	private  double cost;
	//private  int category_Id;
	//private int discount;	
	private  String pic;	
	private String dateOfExpiry;
//	@DateTimeFormat(iso=DateTimeFormat.ISO.DATE)
	//private Date dateOfExpiry;
	
	@ManyToOne
	@JoinColumn(name="category")
	private Category category;
	
	@OneToMany(mappedBy="product")
	private Set<Offer>offers;
	
	@OneToMany(mappedBy="product")
	private Set<Cart>carts;
	
	
	@OneToMany(mappedBy="product")
	private Set<CustomerPurchasing>customerPurchasings;
	
	public Product() {
		super();
	}

	public Product(int productId, String name, int quantity, String description, double cost, String pic,
			String dateOfExpiry, Category category, Set<Offer> offers, Set<CustomerPurchasing> customerPurchasings) {
		super();
		this.productId = productId;
		this.name = name;
		this.quantity = quantity;
		this.description = description;
		this.cost = cost;
		this.pic = pic;
		this.dateOfExpiry = dateOfExpiry;
		this.category = category;
		this.offers = offers;
		this.customerPurchasings = customerPurchasings;
	}



	public int getProductId() {
		return productId;
	}





	public void setProductId(int productId) {
		this.productId = productId;
	}





	public Set<Offer> getOffers() {
		return offers;
	}





	public void setOffers(Set<Offer> offers) {
		this.offers = offers;
	}





	public Set<CustomerPurchasing> getCustomerPurchasings() {
		return customerPurchasings;
	}





	public void setCustomerPurchasings(Set<CustomerPurchasing> customerPurchasings) {
		this.customerPurchasings = customerPurchasings;
	}





	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public double getCost() {
		return cost;
	}


	public void setCost(double cost) {
		this.cost = cost;
	}

	public String getPic() {
		return pic;
	}


	public void setPic(String pic) {
		this.pic = pic;
	}


	public String getDateOfExpiry() {
		return dateOfExpiry;
	}


	public void setDateOfExpiry(String dateOfExpiry) {
		this.dateOfExpiry = dateOfExpiry;
	}


	public Category getCategory() {
		return category;
	}


	public void setCategory(Category category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", name=" + name + ", quantity=" + quantity + ", description="
				+ description + ", cost=" + cost + ", pic=" + pic + ", dateOfExpiry=" + dateOfExpiry + ", category="
				+ category + ", offers=" + offers + ", customerPurchasings=" + customerPurchasings + "]";
	}


	public double getDiscount() {
		return 0;
	}
	
	
	
}
