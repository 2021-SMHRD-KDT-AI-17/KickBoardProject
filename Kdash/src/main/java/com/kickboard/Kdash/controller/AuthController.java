package com.kickboard.Kdash.controller;

import java.security.Principal;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kickboard.Kdash.entity.SignupDto;
import com.kickboard.Kdash.service.AuthService;
import com.kickboard.Kdash.utils.Script;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class AuthController {

	@Autowired
	AuthService authService;

//	@GetMapping("/login")
//	public String signin() {
//		return "login";
//	}

	@GetMapping("/login")
	public String toLoginPage(HttpSession session) {
		String email = (String) session.getAttribute("userEmail");
		if (email != null) {
			return "Home";
		}
		return "login";
	}

	@PostMapping("/login")
	public String login(String email, String password, HttpSession session) {
		
		System.out.println(email+" | "+password);
		
		String userEmail = authService.emailCheck(email, password);
		
		System.out.println("/login: "+userEmail);
		if (userEmail == null) {
			return "login";
		}
		session.setAttribute("userEmail", email);
		return "Home";
	}

	@GetMapping("/register")
	public String signup() {
		return "register";
	}

	@GetMapping("/failed")
	public String failedSignin(Model model) {
		return Script.locationMsg("/login", "아이디 또는 비밀번호를 잘못 입력하셨습니다", model);
	}

	// 회원 가입 및 안내 문구 등
	// Errors는 반드시 Request객체 바로뒤에 위치해야함
	@PostMapping("/register")
	public String signup(@Valid SignupDto signupDto, Errors errors, Model model) {

		// 유효성 검사 실패
		if (errors.hasErrors()) {
			// 사용자로부터 입력받은 데이터를 유지하기 위함
			model.addAttribute("signupDto", signupDto);

			// 유효성검사에 실패한 필드와 메시지를 저장
			Map<String, String> validResult = authService.validHandling(errors);

			// 필드를 key값으로 에러메시지 저장
			for (String key : validResult.keySet()) {
				System.out.println(key + validResult.get(key));
				model.addAttribute(key, validResult.get(key));
			}

			// 사용자로부터 입력받은 데이터와 에러메시지를 가지고 회원가입페이지로 다시이동
			return "/register";

		}

		// userEmail이 이미 존재할시 키값에 오류메시지 저장
		if (authService.userEmailChk(signupDto.getEmail()) != null) {
			model.addAttribute("valid_Email", "이미 등록된 이메일입니다");
			return "register";
		}

		// 유효성 검사 성공시 회원가입 서비스 로직 실행
		authService.signup(signupDto);

		// 이때 회원가입이 성공하였다는 메시지 출력 후 로그인페이지 이동
		return Script.locationMsg("/login", "회원가입에 성공하였습니다", model);
	}
	
	@GetMapping("/test")
	public String testPage() {
		return "test";
	}

}
