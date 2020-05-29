package com.mayer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;


import com.mayer.domain.Cart;

import com.mayer.repository.CartRepository;
import com.mayer.repository.ProductRepository;

public class CartServiceImpl implements CartService {
	@Autowired
	CartRepository cartRepository;
	@Autowired
	ProductRepository productRepository;

	@Override
	public Cart saveCart(Cart cart) {
		return cartRepository.save(cart);
	}

	@Override
	public List<Cart> getAll() {
		return cartRepository.findAll();

	}

	@Override
	public void delete(int cartId) {
		cartRepository.deleteById(cartId);

	}

	@Override
	public Cart update(int cartId, Cart cart) {
		return cartRepository.save(cart);
	}

	@Override
	public Cart getCart(int cartId) {
		return null;
	}

	@Override
	public Cart findCartById(int cartId) {
		return cartRepository.findById(cartId).get();
	}
	@Override
	public Cart findCartByProductId(int productId) {
		List<Cart> carts = cartRepository.findAll();
		for(Cart cart:carts) {
			if(cart.getProduct().getProductId()==productId)
				return cart;
		}
		return null;
	}

	@Override
	public void buy(Cart cart) {
		
		cartRepository.deleteAll();
	}

	/*
	 * @Override public void removeItemFromCart(int item) {
	 * itemRepository.findById(itemId).get();
	 * 
	 * }
	 */




}
