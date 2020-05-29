package com.mayer.contoller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mayer.domain.Category;
import com.mayer.domain.Category;
import com.mayer.service.CategoryService;

@Controller
@RequestMapping("/cat")
public class CategoryController {

	@Autowired
	CategoryService categoryService;

	@GetMapping("/allCategories")
	public String getAll(Model model) {
		model.addAttribute("categories", categoryService.getAllCategories());
		return "admin-categories";
	}
	
	@GetMapping("/getCategoryForm")
	public String getCategoryForm(Model model, Category category)
	{
		getAll(model);
		return "admin-categories";
	}
	
	@PostMapping("/saveCategoryForm")
	public String saveCategoryForm(Model model, Category category) {
		model.addAttribute(category);
		categoryService.saveCategory(category);
		getAll(model);
		return "admin-categories";
		
		
	}
	@GetMapping("/selectCategoryId")
	public String selectCategoryById(Model model, Category category) {
		model.addAttribute("category", categoryService.getCategoryById(category.getId()));	
		return "admin-categories";
	}
	
	@GetMapping("/selectCategoryName")
	public String selectCategoryByName(Model model, Category category, String name) {
		model.addAttribute("category", categoryService.getCategoryByName(category.getName()));
		return "admin-categories";
	}
	@GetMapping("/deleteCategory")
	public String deleteCategory(@RequestParam int id, Model model) {
		categoryService.deleteCategory(id);
		//getAll(model);
		return "success-delete";
		//return "admin-categories";
	}
	
	
	
	/*@RequestMapping(value="/categories", method=RequestMethod.GET)
	public String listCategories(Model model) {
		List<Category> list = categoryService.getAllCategories();
		model.addAttribute("categories",list);
		return "admin-categories";
	}
	
	@RequestMapping(value="/categories/new", method=RequestMethod.GET)
	public String createCategoryForm(Model model) {
		Category category = new Category();
		model.addAttribute("category",category);
		
		return "create-category";
	}*/


	
	/*
	 * @RequestMapping(value="/categories/{id}", method=RequestMethod.GET) public
	 * String editCategoryForm(@PathVariable int id, Model model) { Category
	 * category = categoryService.getCategoryById(id);
	 * model.addAttribute("category",category); return "edit-category"; }
	 */
	/*	
	@RequestMapping(value="/categories/{id}", method=RequestMethod.POST)
	public String updateCategory(Category category, Model model, RedirectAttributes redirectAttributes) {
		Category updatedCategory = categoryService.updateCategory(category);
		System.out.println("===========Updated category===="+ updatedCategory.getId()+ updatedCategory.getName());
		redirectAttributes.addFlashAttribute("info", "Category updated successfully");
		return "redirect:/admin-categories";
	}*/
	
	@RequestMapping(value="/categorieSearch")
	public String serachCategory(Model m, HttpSession session, @RequestParam("freeText") String freeText) {
		String name=(String) session.getAttribute("name");
		m.addAttribute(" category",categoryService.getCategoryByName(name));
		return "admin-category";
	}

}


