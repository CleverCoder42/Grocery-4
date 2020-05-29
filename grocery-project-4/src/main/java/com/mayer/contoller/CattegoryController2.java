package com.mayer.contoller;

import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.mayer.domain.Category;
import com.mayer.domain.Product;
import com.mayer.service.CategoryService;

@Controller
public class CattegoryController2 {

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/user/category_form")

	public String categoryForm(Model m) {

		Category category = new Category();

		m.addAttribute("command", category);

		return "category_form";// JSP form view

	}

	@RequestMapping(value = "/user/edit_category")

	public String prepareEditForm(Model m, HttpSession session, @RequestParam("cid") int id) {

		session.setAttribute("aCategoryId", id);

		Category c = categoryService.getCategoryById(id);

		m.addAttribute("command", c);

		return "category_form";// JSP form view

	}

	// @RequestMapping(value = "/user/save_category")

	public String saveOrUpdateCategory(@ModelAttribute("command") Category c, Model m, HttpSession session) {

		int id = (int) session.getAttribute("aCategoryId");

		try {

			c.setId(id); // PK // c.setCategoryId(id); categoryService.updateCategory(c);

			session.removeAttribute("aCategoryId");

			return "redirect:clist?act=ed";// redirect user to category list url

		} catch (Exception e) {

			e.printStackTrace();

			m.addAttribute("err", "Failed to Edit category");

			return "category_form";

		}

	}


    @RequestMapping(value = "/user/category_search")

    public String contactSearch(Model m, HttpSession session, @RequestParam("freeText") String freeText) {

        //Integer userId = (Integer) session.getAttribute("userId");

        m.addAttribute("contactList", categoryService.findNameCategory(freeText));

        return "clist"; //JSP

    }

	@RequestMapping(value = "/user/del_category")

	public String deleteCategory(@RequestParam("cid") int categoryId) {

		categoryService.deleteCategory(categoryId);

		return "redirect:clist?act=del";

	}

}
