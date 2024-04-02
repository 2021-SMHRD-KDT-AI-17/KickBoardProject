package com.kickboard.Kdash.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kickboard.Kdash.mapper.QuizMapper;

@Controller
public class QuizController {
	@Autowired
	public QuizMapper quizMapper;

	@RequestMapping("/quiz")
	public String quiz(@RequestParam String result, String question) {
		String real_ans = quizMapper.quiz_ans(question);
		
		if(real_ans.equals(result)) {
			System.out.println("정답");
		}else{
			System.out.println("오답");
		}
		return"redirect:/predict";
	}
}
