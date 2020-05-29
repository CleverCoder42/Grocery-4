package com.mayer.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mayer.domain.Category;
import com.mayer.exceptions.GroceryAppException;
import com.mayer.exceptions.GroceryAppException2;
import com.mayer.repository.CategoryRepository;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryRepository categoryRepository;

	@Override
	public List<Category> getCategoryByNameLike(String name, String txt) {
		return categoryRepository.findByNameLike(name);
	}

	public Category getCategoryByName(String name) {
		return categoryRepository.findByName(name);
	}
	public Category getCategoryById(int id) {
		return categoryRepository.findById(id).get();
	}


	@Override
	public List<Category> getAllCategories() {
		return categoryRepository.findAll();
	}

	@Override
	public Category saveCategory(Category c) {
		return categoryRepository.save(c);
		
	}

	@Override
	public Category createCategory(Category category) {
		Category inputCategory = getCategoryByName(category.getName());
		if(inputCategory != null){
			throw new GroceryAppException2("Category "+category.getName()+" already exist");
		}
		return categoryRepository.save(category);
	}
	
	@Override
	public Category updateCategory(Category category) {
		Category updatedCategory = getCategoryById(category.getId());
		if(updatedCategory == null){
			throw new GroceryAppException("Category "+category.getId()+" doesn't exist");
		}
		updatedCategory.setDescription(category.getDescription());
		updatedCategory.setDescription(category.getName());
		return categoryRepository.save(updatedCategory);
	}

	@Override
	public void deleteCategory(int id) {
	categoryRepository.deleteById(id);
		
	}

	@Override
	public List<Category> findNameCategory( String name) {
		return categoryRepository.findByNameLike(name);
	}

	@Override
	public List<Category> findProductCategory(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}



	/*
	 * public Category createCategory(Category category) { Category
	 * persistedCategory = getCategoryByName(category.getName()); if
	 * (persistedCategory != null) { throw new Exception("Category " +
	 * category.getName() + " already exist"); } return
	 * categoryRepository.save(category); }
	 */

}
