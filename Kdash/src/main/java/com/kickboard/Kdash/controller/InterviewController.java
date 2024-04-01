package com.kickboard.Kdash.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kickboard.Kdash.entity.Request;

@Controller
public class InterviewController {
	
	
	
	@GetMapping("/interview_write")
	public String interview_write() {
		return "interview_write";
	}
	
	
}
