package com.niit.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CartItemDao;
import com.niit.dao.ProductDao;
import com.niit.models.CartItem;

@Controller
public class HomeController {

	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private CartItemDao cartItemDao;

	HomeController() {
		System.out.println("INSIDE THE HOME CONTROLLER");
	}

	@RequestMapping(value = "/home")
	public String getHome(HttpSession session, Model model,@AuthenticationPrincipal Principal principal) {
		model.addAttribute("productsList", productDao.getAllProducts());
		session.setAttribute("categories", productDao.getAllCategories());
		if(principal!=null){
			String email=principal.getName();
			List<CartItem> cartItems=cartItemDao.getCart(email);
			session.setAttribute("cartSize",cartItems.size());
			}
		return "home";
	}

	@RequestMapping(value = "/aboutus")
	public String getAboutUs() {
		return "aboutus";
	}

	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/loginerror")
	public String loginFailed(Model model) {
		model.addAttribute("error", "Invalid Credentials");
		return "login";
	}

	@RequestMapping(value = "/logout")
	public String logout(Model model) {
		model.addAttribute("msg", "Logged out Successfully");
		return "login";
	}

}
