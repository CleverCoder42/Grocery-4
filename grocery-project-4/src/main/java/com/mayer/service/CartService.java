package com.mayer.service;

import java.util.List;

import com.mayer.domain.Cart;


public interface CartService {

	public Cart saveCart(Cart cart);

	public List<Cart> getAll();

	public void delete(int cartId);

	public Cart update(int cartId, Cart cart);
	
	public Cart getCart(int cartId);
	/* public void deleteItem(int id); */
	

	public Cart findCartByProductId(int productId);

	public Cart findCartById(int cartId);
	public void  buy(Cart cart);

}

