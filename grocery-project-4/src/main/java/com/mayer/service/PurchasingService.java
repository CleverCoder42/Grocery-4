package com.mayer.service;

import java.util.List;


import com.mayer.domain.CustomerPurchasing;


public interface PurchasingService {

	public CustomerPurchasing save(CustomerPurchasing cPurchasing);

	public List<CustomerPurchasing> getAll();

	public void delete(int purchasingId);

	public CustomerPurchasing update(int purchasingId, CustomerPurchasing cPurchasing);
	
	public CustomerPurchasing getCustomerPurchasing(int purchasingId);


	public CustomerPurchasing findCustomerPurchasingById(int purchasingId);


}

