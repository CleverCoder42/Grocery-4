package com.mayer.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.mayer.domain.Category;
import com.mayer.domain.Product;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
	
	
	public Category findByName(String name);
	public List<Category> findByNameLike(@Param("name") String name);

}
