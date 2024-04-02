package com.kickboard.Kdash.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import jakarta.servlet.http.HttpSession;

import com.kickboard.Kdash.entity.SignupDto;
import com.kickboard.Kdash.mapper.ProfileMapper;

@Controller
public class ProfileController {
	
	@Autowired
	public ProfileMapper profileMapper;
	
	@RequestMapping("/profile_update")
	public String profile_update(SignupDto sign, HttpSession session) {
		System.out.println(sign);
		profileMapper.profile_update(sign);
		return"Home";
	}
}
