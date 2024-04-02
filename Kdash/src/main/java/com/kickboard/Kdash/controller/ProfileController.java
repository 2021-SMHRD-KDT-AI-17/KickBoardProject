package com.kickboard.Kdash.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProfileController {
	
	@RequestMapping("/profile_alter")
	public String profile_alter() {
		
		return"";
	}
}
