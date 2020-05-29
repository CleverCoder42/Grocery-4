package com.mayer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.mayer.domain.Category;
import com.mayer.domain.Product;
import com.mayer.repository.CategoryRepository;
import com.mayer.repository.ProductRepository;

public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductRepository productRepository;
	@Autowired
	CategoryRepository categoryRepository;

	@Override
	public Product saveProduct(Product i) {
		return productRepository.save(i);
	}

	@Override
	public List<Product> getAll() {
		return productRepository.findAll();

	}

	@Override
	public void delete(int productId) {
		productRepository.deleteById(productId);

	}

	@Override
	public Product update(int productId, Product i) {
		return productRepository.save(i);
	}

	@Override
	public Product getProduct(int productId) {
		return null;
	}

	@Override
	public Product findProductById(int productId) {
		return productRepository.findById(productId).get();
	}

	/*
	 * @Override public List<Item> findItemsByQuery(String query) { return
	 * itemRepository.search("%" + query + "%"); }
	 */

	@Override
	public List<Product> search(double min, double max) {
		return productRepository.search(min, max);
	}

	@Override
	public List<Product> searchByNameAndDescription(String query) {
		return productRepository.searchByNameandDescription(query);

	}

	
	/*
	 * @Override public List<Product> searchByCategory(String name) { return
	 * categoryRepository.findByNameLike(name); }
	 */
	 
	
	@Override
	public List<Product> searchByNameLike(String name) {
		 List<Product> products = productRepository.searchByNameandDescription(name);
		products.forEach(e -> System.out.println(e.getName()));
		return products;
	}

}
