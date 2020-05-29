package com.mayer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mayer.domain.Customer;
import com.mayer.domain.CustomerTransaction;
import com.mayer.repository.CustomerTransactionRepository;

@Service(value = "transactionService")
public class TransactionServiceImpl implements TransactionService {

	@Autowired
	CustomerTransactionRepository customerTransactionRepository;

	@Override
	public void saveTransaction(CustomerTransaction customerTransaction) {
		/* System.out.println("---------TRANSACTION SAVED FROM SERVICE------------"); */
		customerTransactionRepository.save(customerTransaction);

	}

	@Override
	public CustomerTransaction findById(int transactionId) {
		return customerTransactionRepository.findById(transactionId).get();
		// return transactionRepository.findById(tId).get();
	}
	
	


	@Override
	public List<CustomerTransaction> getAllTransaction() {
		return customerTransactionRepository.findAll();
	}


	@Override
	public boolean exists(int transactionId) {
		// TODO Auto-generated method stub
		return false;
	}

}
