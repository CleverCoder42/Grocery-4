package com.mayer.contoller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mayer.domain.CustomerTransaction;
import com.mayer.service.TransactionService;

@Controller
@RequestMapping("/transaction")
public class TrasactionController {

	@Autowired
	TransactionService transactionService;

	@GetMapping("/showTransaction")
	public String showTransactionForm(CustomerTransaction customerTransaction, Model model) {
		model.addAttribute("customerTransaction", transactionService.findById(customerTransaction.getTransactionId()));
		System.out.print("TRANSACTIONS");
		return "show-transaction";
	}

	@PostMapping("/saveTransaction")
	public String saveTransaction(@Valid @ModelAttribute CustomerTransaction customerTransaction, BindingResult br,
			Model model) {

		model.addAttribute("customerTransaction", customerTransaction);
		System.out.println("br.hasErrors(): " + br.hasErrors());
		System.out.println("===========" + customerTransaction);
		if (!br.hasErrors()) {
			transactionService.saveTransaction(customerTransaction);

		} else {
			System.out.println("From model attribute" + customerTransaction);
		}

		return "transaction-form";
	}

	/*
	 * @GetMapping("saveTransaction2") public String
	 * showtransactionForm(CustomerTransaction customerTransaction, Model model) {
	 * System.out.println("Code==============////////////=="+
	 * transaction.getCode()); if (transaction.getCode() == 0) {
	 * transaction.setCode(1); } if (transaction.getCode() > 1) { //int newCode =
	 * transactionService.getMaxtransactionCode() + 1;
	 * //transaction.setCode(newCode);
	 * //System.out.println("NewCode==============////////////=="+ newCode); }
	 * return "transaction-form"; return "show-transaction"; }
	 */

	/*
	 * @GetMapping("/allTransactions") public String
	 * getAlltransactiones(CustomerTransaction customerTransaction, Model model) {
	 * model.addAttribute("customerTransaction",
	 * transactionService.getAllTransaction());
	 * System.out.println("=====ALL TRANSACTIONS=====" +
	 * transactionService.getAllTransaction()); return "transaction-list";
	 * 
	 * }
	 */
	@GetMapping("/allTransactions")
	public String getAll(Model model) {
		model.addAttribute("customerTransaction", transactionService.getAllTransaction());
		System.out.println("=====ALL TRANSACTIONS=====" );
		return "admin-transaction";
	}

}
