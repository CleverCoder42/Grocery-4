package com.mayer.service;

import java.util.List;
import java.util.Optional;

import com.mayer.domain.Category;

public interface CategoryService {

	public Category saveCategory(Category c);

	public Category getCategoryById(int id);

	public List<Category> getAllCategories();

	public Category createCategory(Category category);

	public Category updateCategory(Category category);
	
	public Category getCategoryByName(String name);

	List<Category> getCategoryByNameLike(String name, String txt);
	
	public void deleteCategory(int id);
	
    public List<Category> findNameCategory( String txt); 
    public List<Category> findProductCategory(int id);

	public void delete(int id);

	
	
   
	
}
