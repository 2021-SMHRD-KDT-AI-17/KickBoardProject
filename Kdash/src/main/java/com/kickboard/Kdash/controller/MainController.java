package com.kickboard.Kdash.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	@GetMapping("/")
	public String Home1() {
		return "Home";
	}
	@GetMapping("/home")
	public String Home2() {
		return "Home";
	}
	@GetMapping("/predict")
	public String predict() {
		return "predict";
	}
//	@GetMapping("/login")
//	public String login() {
//		return "login";
//	}
//	@GetMapping("/register")
//	public String register() {
//		return "register";
//	}
	@GetMapping("/register2")
	public String register2() {
		return "register2";
	}
	@GetMapping("/news")
	public String news() {
		return "news";
	}
	@GetMapping("/interview")
	public String interview() {
		return "interview";
	}
	
	@GetMapping("/shop_details")
	public String shop_details() {
		return "shop_details";
	}
	@GetMapping("/shop_paycheck")
	public String shop_paycheck() {
		return "shop_paycheck";
	}
	@GetMapping("/profile")
	public String profile() {
		return "profile";
	}
}
