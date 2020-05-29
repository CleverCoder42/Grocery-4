package com.mayer.contoller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mayer.domain.Customer;
import com.mayer.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerControler {
	
	@Autowired protected PasswordEncoder passwordEncoder;

	@Autowired
	CustomerService customerService;

	@GetMapping("/admin")

	public String getCustomerFormforAdmin(Model model, Customer customer) {
		getAll(model);
		System.out.println("=========/Customer=======" + customer);
		return "admin-customers";
	}
	@GetMapping("/customer")
	public String getCustomerForm(Model model, Customer customer) {
		getAll(model);
		System.out.println("=========/Customer=======" + customer);
		return "customer";
	}


	@PostMapping("/saveCustomerForm")
	// public String saveEmployeeForm(@Validated Employee employee, BindingResult
	// bindingResult,
	public String saveCustomerForm(@Validated Customer customer, BindingResult bindingResult, Model model) {

		if (bindingResult.hasErrors()) {
			return "customer";
		}
		model.addAttribute("customer", customer);
		customerService.saveCustomer(customer);
		System.out.println("=========saveCustomerForm=======" + customer);
		getAll(model);
		return "customer";
	}

	@GetMapping("/allCustomers")
	public String getAll(Model model) {
		model.addAttribute("customers", customerService.getAll());
		return "admin-customers";
	}

	@GetMapping(value = "/updateCustomer/{customerId}")
	public String update(Customer c, @PathVariable int customerId, Model model) {
		model.addAttribute("customer", c);
		customerService.saveCustomer(c);
		getAll(model);
		return "customer";
	}

	@GetMapping("/deleteCustomer")
	public String deleteCustomer(@RequestParam int customerId, Model model) {
		customerService.deleteCustomer(customerId);
		//getAll(model);
		return "success-delete";
	}
	@RequestMapping(value="/register", method=RequestMethod.GET)
	protected String registerForm(Model model)
	{
		model.addAttribute("customer", new Customer());
		return "customer";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	protected String register( @ModelAttribute("customer") Customer customer,  Model model,RedirectAttributes redirectAttributes)
	{
		String password = customer.getPassword();
		String encodedPwd = passwordEncoder.encode(password);
		customer.setPassword(encodedPwd);
		
		Customer persistedCustomer = customerService.createCustomer(customer);
		System.out.println("Created new Customer with id  and email "+persistedCustomer.getCustomerId()+""+ persistedCustomer.getEmail());
		redirectAttributes.addFlashAttribute("info", "Customer created successfully");
		//return "redirect:/login";
		return "customer";
	}
	
	 @RequestMapping(value="/myAccount", method=RequestMethod.GET)
	  protected String myAccount(Model model)
	  {
	    //String email = getCurrentUser().getCustomer().getEmail();
	    //Customer customer = customerService.getCustomerByEmail(email);
	    //model.addAttribute("customer", customer);
	    //List<CustomerTransaction> transactions = customerService.getCustomerTransaction(email);
	   //model.addAttribute("transactions", transactions);
	    return "myAccount";
	  }
	
}


