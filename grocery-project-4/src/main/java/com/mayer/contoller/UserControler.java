package com.mayer.contoller;

import java.security.Principal;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mayer.domain.Role;
import com.mayer.domain.User;
import com.mayer.service.RoleService;
import com.mayer.service.UserService;
import com.mayer.utilities.Utilites;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
/* @RequestMapping("/user") */
public class UserControler {

	@Autowired
	UserService userService;

	@Autowired
	RoleService roleService;

	@RequestMapping(value = "/login")
	public String login(@RequestParam(required = false) String logout, @RequestParam(required = false) String error,
			HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Model model) {
		String message = "";
		if (error != null) {
			message = "Invalid Credentials";
		}
		if (logout != null) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (auth != null) {
				new SecurityContextLogoutHandler().logout(httpServletRequest, httpServletResponse, auth);
			}
			message = "Logout";
			return "login";
		}
		model.addAttribute("Message", message);
		return "login";

	}

	@RequestMapping(value = "/accessDeniedPage")
	public String accessDenied(Principal principal, Model model) {
		String message = principal.getName() + ", Unauthorised access";
		model.addAttribute("Message", message);
		return "accessDenied";

	}

	// @GetMapping(value = { "/getUserForm", "/saveUserForm", "/", "/welcome" })
	@GetMapping(value = "/getUserForm")
	public String getUserForm(User user, Model model) {
		model = Utilites.getPrincipal(model);
		List<Role> roleList = roleService.findAll();
		Set<Role> roleSet = new LinkedHashSet<>(roleList);
		user.setRoles(roleSet);
		model.addAttribute("roleSet", roleSet);

		return "user";
	}

	@GetMapping(value = "/logout")
	public String logout(HttpServletRequest req, HttpServletResponse res) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		System.out.println("UserController.logout() auth: " + auth);
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(req, res, auth);
		}
		auth = null;
		System.out.println("UserController.logout(...) auth: " + auth);
		return "redirect:/login?logout";
	}

	/*
	 * @GetMapping("/user") public String getUserForm(Model model, User user) {
	 * getAll(model); System.out.println("=========/USER=======" + user); return
	 * "user"; }
	 */

	@PostMapping("/saveUserForm")
	public String saveUserForm(User user, Model model) {
		model.addAttribute("user", user);
		userService.save(user);
		System.out.println("=========saveUserForm and USER IS =======" + user);
		getAll(model);
		return "register-success";
	}

	@GetMapping("/allUsers")
	public String getAll(Model model) {
		model.addAttribute("users", userService.getAll());
		return "admin-users";
	}

}
