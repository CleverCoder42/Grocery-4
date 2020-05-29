package com.mayer.contoller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mayer.domain.Cart;
import com.mayer.domain.Category;
import com.mayer.domain.CustomerPurchasing;
import com.mayer.domain.CustomerTransaction;
import com.mayer.domain.Product;
import com.mayer.service.CartService;
import com.mayer.service.CategoryService;
import com.mayer.service.ProductService;
import com.mayer.service.PurchasingService;
import com.mayer.service.TransactionService;

@Controller
/* @RequestMapping("/cart") */
public class CartController {

	@Autowired
	CartService cartService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	ProductService productService;
	@Autowired
	PurchasingService purchasingService;
	
	@Autowired
	TransactionService transactionService;

	@GetMapping("/carts")
	public String getAllCarts(Model model, Cart cart, @RequestParam int productId) {
		model.addAttribute("carts", cartService.getAll());
		Cart existcart = cartService.findCartByProductId(productId);
		model.addAttribute("existcart",existcart);
		Product product=productService.findProductById(productId);
		model.addAttribute("product", product);
		getAll(model);
		return "cart";
	}

	
	@GetMapping("/cart")
	public String getCartForm(Model model, Cart cart) {
		getAll(model);
		System.out.println("=========GET CART FORM=======" + cart);
		return "cart";
	}

	@PostMapping("carts/saveCartForm")
	public String saveCartForm(Cart cart, Model model) {
		model.addAttribute("cart", cart);
		cartService.saveCart(cart);
		System.out.println("=========SAVE CART FORM= =======" + cart);
		getAll(model);
		return "cart";
	}

	
	/*
	 * @GetMapping("/carts/buy") public String getAllCarts(Model model, Cart
	 * cart, @RequestParam int productId) { model.addAttribute("carts",
	 * cartService.getAll()); Cart existcart =
	 * cartService.findCartByProductId(productId);
	 * model.addAttribute("existcart",existcart); Product
	 * product=productService.findProductById(productId);
	 * model.addAttribute("product", product); getAll(model); return "cart"; }
	 */

	
	@GetMapping("/carts/buy")
	public String buyCarts(Model model) {
		model.addAttribute("carts", cartService.getAll());
		List<Cart> carts = cartService.getAll();
		getAll(model);
		return "buy";
	}

	@GetMapping("/carts/checkout")
	public String checkout(Model model) {
		model.addAttribute("carts", cartService.getAll());
		List<Cart> carts = cartService.getAll();
		getAll(model);
		return "checkout";
	}
	
	@GetMapping("/customerTransaction")
	public String getCartForm(Model model, CustomerTransaction customerTransaction) {
		getAll(model);
		System.out.println("=========GET customerTransaction FORM=======" + customerTransaction);
		return "checkout";
	}
	
	@GetMapping("/carts/pay")
	public String pay(Model model) {
		model.addAttribute("carts", cartService.getAll());
		List<Cart> carts = cartService.getAll();
		CustomerTransaction customerTransaction = new CustomerTransaction();
		Set<CustomerPurchasing> customerPurchasing =new HashSet<>();
		for (Cart cart : carts) {
			Product product = cart.getProduct();//

			CustomerPurchasing purchase = new CustomerPurchasing(1, cart.getQuantity(), product.getCost(), cart.getQuantity() * product.getCost(), product.getDiscount()/* ,customerTransaction */);
			
			customerPurchasing.add(purchase);
			/*
			 * 
			 * System.out.print("********purchase******" + purchase +
			 * "***purchase*************"); //
			 * System.out.print("=============="+purchase+"==============");
			 * purchasingService.save(purchase); // CustomerTransaction
			 * customerTransaction=new // CustomerTransaction(1,"123",25,"address,",
			 * purchase);
			 * 
			 * customerTransaction.setCustomerMobile("123");
			 * 
			 * transactionService.saveTransaction(customerTransaction);
			 * System.out.print("********customerTransaction******" + customerTransaction +
			 * "***customerTransaction********");
			 */

			/*
			 * cartService.delete(cart.getCartId()); System.out.print("**************" +
			 * customerTransaction.getCustomerMobile() + "***********");
			 */
		}
		
		customerTransaction.setCustomerPurchasings(customerPurchasing);

		getAll(model);
		return "success-transaction";
	}

	
	/*
	 * @PostMapping("/saveCustomerForm") // public String
	 * saveEmployeeForm(@Validated Employee employee, BindingResult //
	 * bindingResult, public String saveCustomerForm(@Validated Customer customer,
	 * BindingResult bindingResult, Model model) {
	 * 
	 * if (bindingResult.hasErrors()) { return "customer"; }
	 * model.addAttribute("customer", customer);
	 * customerService.saveCustomer(customer);
	 * System.out.println("=========saveCustomerForm=======" + customer);
	 * getAll(model); return "customer"; }
	 */
	
	
	/*@GetMapping("/cart/checkout")
	public String checkout(Model model) {
		
		model.addAttribute("carts", cartService.getAll());
		List<Cart> carts = cartService.getAll();
		getAll(model);
		//model.addAttribute("carts", cartService.getAll());
		//List<Cart> carts = cartService.getAll();
		for(Cart cart:carts) {
			Product product= cart.getProduct();//
			CustomerPurchasing purchase = new CustomerPurchasing( product, cart.getQuantity(), product.getCost(), cart.getQuantity()*product.getCost(), product.getDiscount(),	new CustomerTransaction() );
			//purchaseServise.save(purchase);
		}
		//getAll(model);
		return "checkout";
	}*/
	
	
	
	/*
	 * @PostMapping("carts/buy") public String buyCartForm(Cart cart, Model model) {
	 * model.addAttribute("cart", cart); //cartService.buy(cart);
	 * System.out.println("=========BUY CART FORM= =======" + cart); getAll(model);
	 * return "buy"; }
	 */




	/*
	 * private int exists(int itemId, List<Cart> cart) { for (int i = 0; i <
	 * cart.size(); i++) { if (((HttpSession)
	 * cart.get(i).getItems()).getId().equals(itemId)) { return i; } } return -1; }
	 */

	@GetMapping("/allCarts")
	public String getAll(Model model) {
		model.addAttribute("carts", cartService.getAll());
		return "cart";
	}

	@GetMapping("carts/selectCart")
	public String selectCart(Cart cart, Model model) {
		model.addAttribute("cart", cartService.findCartById(cart.getCartId()));
		return "cart";
	}

	@GetMapping("carts/displayCart")
	public String displayCart(Cart cart, Model model) {
		// Integer cartId= (Integer) session.getAttribute("cartId");
		model.addAttribute("cart", cartService.findCartById(cart.getCartId()));
		return "cart";
	}

	@GetMapping("carts/displayItemCart")
	public String displayItemCart(Product product, Model model) {
		// Integer itemId= (Integer) session.getAttribute("itemId");
		model.addAttribute("item", productService.findProductById(product.getProductId()));
		return "cart";
	}

	@RequestMapping("/carts/{cartId}")
	public String cart(@PathVariable int cartId, Model model) {
		Cart cart = cartService.findCartById(cartId);
		model.addAttribute("cart", cart);
		return "cart";
	}

	/*
	 * @RequestMapping(value = "/addTocart", method = RequestMethod.POST) public
	 * String addToCart(Cart cart, @PathVariable int productId, Model model, Product
	 * item) { model.addAttribute("cart", cart); List<Product> crt = new
	 * ArrayList<Product>(); item = itemService.findProductById(productId);
	 * item.getItemId(); // if (item.getItemId().get == item.getItemId();
	 * crt.add(item); item.setQuantity(item.getQuantity() + 1); return "cart"; }
	 */

	@GetMapping(value = "/updateCart/{cartId}")
	public String updateCart(Cart c, @PathVariable int cartId, Model model) {
		model.addAttribute("cart", c);
		cartService.saveCart(c);
		getAll(model);
		return "admin-carts";
	}

	/*
	 * @RequestMapping("/carts") public String searchProducts(@RequestParam(name =
	 * "q", defaultValue = "") String query, Model model) { List<Cart> carts =
	 * cartService.findCartsByQuery(query); model.addAttribute("carts", carts);
	 * return "admin-carts"; }
	 */

	@GetMapping("/deleteCart")
	public String deleteCart(@RequestParam int cartId, Model model) {
		cartService.delete(cartId);
		getAll(model);
		return "success-delete";
		// return "admin-carts";
	}

	@RequestMapping("/categories/{name}")
	public String category(@PathVariable String name, Model model) {
		List<Category> category = (List<Category>) categoryService.getCategoryByName(name);
		model.addAttribute("category", category);
		return "admin-categories";
	}

}
