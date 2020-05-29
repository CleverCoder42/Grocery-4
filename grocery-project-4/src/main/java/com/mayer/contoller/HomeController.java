package com.mayer.contoller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mayer.domain.Category;
import com.mayer.domain.Product;
import com.mayer.service.CategoryService;

@Controller
public class HomeController {

	CategoryService categoryService;

	
	
	  @GetMapping("home")
	    public String home() {
	    	System.out.println("=======Home Page==============");
			/* return ("<h1>Welcome</h1>"); */
	        return "range-slider";
	    }
	
	/*
	 * @GetMapping("/home") public String home(Model model) { List<Category>
	 * listCategories = new ArrayList<>(); List<Category> categories =
	 * categoryService.getAllCategories(); for (Category category : categories) {
	 * Set<Item> items = category.getItems(); Set<Item> showItems = new HashSet<>();
	 * int noOfItemsToDisplay = 6;
	 * 
	 * if (items.size() > noOfItemsToDisplay) { Iterator<Item> iterator =
	 * items.iterator(); for (int i = 0; i < noOfItemsToDisplay; i++) {
	 * showItems.add(iterator.next()); } } else { showItems.addAll(items); }
	 * 
	 * category.setItems(showItems); listCategories.add(category); }
	 * model.addAttribute("categories", listCategories);
	 * 
	 * System.out.println("=======Home Page==============");
	 * 
	 * return ("<h1>Welcome</h1>"); return "home"; }
	 */

	/*
	 * @RequestMapping("/categories/{name}")
	 * 
	 * public String category(@PathVariable String name, Model model) { Category
	 * category = categoryService.getCategoryByName(name);
	 * model.addAttribute("category", category); return "category"; return
	 * ("<h1>Welcome</h1>"); }
	 */

	/*
	 * @GetMapping("/user") public String user() {
	 * System.out.println("=========User Page============"); return
	 * ("<h1>Welcome User</h1>"); }
	 * 
	 * @GetMapping("/admin") public String admin() { return
	 * ("<h1>Welcome Admin</h1>"); }
	 */
}
