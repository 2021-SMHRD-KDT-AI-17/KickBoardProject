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
		String name=null;
		if(req.getClub_idx()==0) {
			name="p"+requestService.getPlayerName(idx);
		}
		if(req.getPlayer_idx()==0) {
			name="c"+requestService.getClubName(idx);
		}
		model.addAttribute("name",name);
		return "interview_detail";
	}
	@GetMapping("/interview_write")
	public String reqWrite() {
		return "interview_write";
	}
}
