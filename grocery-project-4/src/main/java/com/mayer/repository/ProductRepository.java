package com.mayer.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.mayer.domain.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

	/*
	 * select cost from products where cost between 1 and 3 ("select e from Employee
	 * e where e.salary<=(select min(salary) from Employee e )
	 */
	/*
	 * 
	 * 
	 * @Query(value = "SELECT * FROM USERS WHERE EMAIL_ADDRESS = ?1", nativeQuery =
	 * true)
	 */
	/* @Query("select * from item  where cost between 1 and 3, ") */
	@Query("from Product where cost between :min and :max")
	public List<Product> search(@Param("min") double min, @Param("max") double max);

	public Product findByname(String name);

	public Product findByDescription(String description);

	@Query("select p from Product p where p.name like ?1 or p.description like ?1")
	List<Product> searchByNameandDescription(String query);
	 
	 

}
