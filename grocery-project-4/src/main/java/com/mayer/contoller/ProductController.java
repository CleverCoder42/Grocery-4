package com.mayer.contoller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.mayer.domain.Category;

import com.mayer.domain.Product;
import com.mayer.service.CategoryService;
import com.mayer.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;

	
	@GetMapping("/index")
	public String getAllproducts(Model model, Product product) {
		model.addAttribute("products", productService.getAll());
		getAll(model);
		return "index";
	}

	@GetMapping("/product")
	public String getProductForm(Model model, Product product) {
		getAll(model);
		System.out.println("=========GET ITEM FORM=======" + product);
		return "admin-products";
	}

	@PostMapping("/saveProductForm")
	public String saveProductForm(Product product, Model model) {
		model.addAttribute("product", product);
		productService.saveProduct(product);
		System.out.println("=========SAVE ITEM FORM =======" + product);
		getAll(model);
		return "admin-products";
	}
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
        String name = request.getParameter("name");
        System.out.println("My name "+name);
    }   


	@RequestMapping("/searchName")
	public String searchProductByName(@PathVariable("name") String name, Model model,Product product) {
		
		List<Product> products = productService.searchByNameLike(name);
		System.out.println("products" + products + "////////////");
		model.addAttribute("products", products);
		
		return "index";

	}
	
	
	@RequestMapping(value="search/{min}/{max}")
	public String priceSearching(Model model,@PathVariable("min") String min, @PathVariable("max") String max) {
		List<Product>products= productService.search(Double.parseDouble(min), Double.parseDouble(max));
		model.addAttribute("products", products);
		//getAll(model);
		return "index";
	}
	
	
	@RequestMapping(value="search/{query}")
	public String productSearchingByName(Model model, @PathVariable("query") String query) {
		List<Product>products= productService.searchByNameAndDescription(query);
		model.addAttribute("products", products);
		return "admin-categories";
	}
	
	
	
	  @RequestMapping("/categories/{name}") 
	  public String category(@PathVariable ("name") String name, Model model,Category category ){ 
		  List<Product>products=productService.searchByNameAndDescription(name);
		  System.out.println("products"+products+"////////////");
		  model.addAttribute("products", products);
			//model.addAttribute("category", categoryService.getCategoryByName(category.getName()));
			//return "admin-categories"; 
			return "index"; 
	
	  }
	
	/*
	 * @RequestMapping("/categories/{name}") public String category(@PathVariable
	 * ("name") String name, Model model,Category category ){
	 * model.addAttribute("category",
	 * categoryService.getCategoryByName(category.getName())); //return
	 * "admin-categories"; return "index";
	 * 
	 * }
	 */
	 
	
	/*
	 * @RequestMapping(value="search/{min}/{max}", method=RequestMethod.GET,
	 * produces = { MimeTypeUtils.APPLICATION_JSON_VALUE}, headers =
	 * {"Accept=application/json"}) public ResponseEntity<List<Product>>
	 * priceSearching( @PathVariable("min") String min, @PathVariable("max") String
	 * max) { try { List<Product>products=
	 * productService.search(Double.parseDouble(min), Double.parseDouble(max));
	 * System.out.println(products.size() + "products size"); return new
	 * ResponseEntity<List<Product>>(products,HttpStatus.OK); }catch (Exception e) {
	 * return new ResponseEntity<List<Product>>(HttpStatus.BAD_REQUEST); }
	 * 
	 * 
	 * }
	 */

	@GetMapping("/allProducts")
	public String getAll(Model model) {
		model.addAttribute("products", productService.getAll());
		return "product";
	}

	@GetMapping("/selectProduct")
	public String selectProduct(Product product, Model model) {
		model.addAttribute("product", productService.findProductById(product.getProductId()));
		return "admin-products";
	}

	@GetMapping("/displayProduct")
	public String displayProduct(Product product, Model model) {
		// Integer productId= (Integer) session.getAttribute("productId");
		model.addAttribute("product", productService.findProductById(product.getProductId()));
		return "product";
	}
	
	@RequestMapping("/products/{productId}")
	public String product(@PathVariable int productId, Model model) {
		Product product= productService.findProductById(productId);
		model.addAttribute("product", product);
		return "product";
	}


	@GetMapping(value = "/updateProduct/{productId}")
	public String update(Product c, @PathVariable int productId, Model model) {
		model.addAttribute("product", c);
		productService.saveProduct(c);
		getAll(model);
		return "admin-products";
	}

	/*
	 * @RequestMapping("/products") public String searchProducts(@RequestParam(name =
	 * "q", defaultValue = "") String query, Model model) { List<Product> products =
	 * productService.findProductsByQuery(query); model.addAttribute("products", products);
	 * return "admin-products"; }
	 */

	@GetMapping("/deleteProduct")
	public String deleteProduct(@RequestParam int productId, Model model) {
		productService.delete(productId);
		getAll(model);
		return "success-delete";
		// return "admin-products";
	}


}
