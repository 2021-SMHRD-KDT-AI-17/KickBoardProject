package com.kickboard.Kdash.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kickboard.Kdash.entity.Request;
import com.kickboard.Kdash.service.RequestService;

import jakarta.annotation.Resource;

@Controller
public class RequestController {
	@Resource
	private RequestService requestService;
	@GetMapping("/interview_detail")
	public String getInterview(@RequestParam("idx") int idx, Model model) {
		Request req=requestService.getInterview(idx);
		model.addAttribute("interview",req);
		return "interview_detail";
	}
	@GetMapping("/interview_write")
	public String reqWrite() {
		return "interview_write";
	}
}
