package com.mayer.service;

import java.util.List;

import com.mayer.domain.Product;

public interface ProductService {

	public Product saveProduct(Product i);

	public List<Product> getAll();

	public void delete(int productId);

	public Product update(int productId, Product i);
	
	public Product getProduct(int productId);
	
	public Product findProductById(int productId);

	public List<Product> searchByNameAndDescription(String query); 
	public List<Product> searchByNameLike(String name); 

	public List<Product>search(double min, double max);

	/* public List<Product> searchByCategory(String name); */

	
}

