package com.mayer.service;

import java.util.List;

import com.mayer.domain.CustomerTransaction;

public interface TransactionService {

	public void saveTransaction(CustomerTransaction customerTransaction);

	public CustomerTransaction findById(int transactionId);

	public List<CustomerTransaction> getAllTransaction();

	public boolean exists(int transactionId);

}
