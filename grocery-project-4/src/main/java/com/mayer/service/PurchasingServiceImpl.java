package com.mayer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.mayer.domain.CustomerPurchasing;
import com.mayer.repository.ProductRepository;
import com.mayer.repository.PurchaseRepository;


public class PurchasingServiceImpl implements   PurchasingService {
	
	
	@Autowired
	PurchaseRepository  purchaseRepository;

	public CustomerPurchasing save(CustomerPurchasing cPurchasing) {
		return purchaseRepository.save(cPurchasing);
	}

	public List<CustomerPurchasing> getAll() {
		return null;
	}

	public void delete(int purchasingId) {
	}

	public CustomerPurchasing update(int purchasingId, CustomerPurchasing cPurchasing) {
		return null;
	}
	
	public CustomerPurchasing getCustomerPurchasing(int purchasingId) {
		return null;
	}


	public CustomerPurchasing findCustomerPurchasingById(int purchasingId) {
		return null;
	}


}

